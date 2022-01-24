#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct sync_kloop_ring_args {scalar_t__ irq_ctx; scalar_t__ busy_wait; int /*<<< orphan*/  direct; struct nm_csb_ktoa* csb_ktoa; struct nm_csb_atok* csb_atok; struct netmap_kring* kring; } ;
struct nm_csb_ktoa {int dummy; } ;
struct nm_csb_atok {int dummy; } ;
struct netmap_ring {int head; scalar_t__ tail; int /*<<< orphan*/  flags; } ;
struct netmap_kring {int nkr_num_slots; int nr_hwcur; scalar_t__ rtail; int (* nm_sync ) (struct netmap_kring*,int /*<<< orphan*/ ) ;scalar_t__ nr_hwtail; scalar_t__ rhead; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAF_FORCE_RECLAIM ; 
 int NM_DEBUG_TXSYNC ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct nm_csb_atok*) ; 
 int /*<<< orphan*/  FUNC2 (struct nm_csb_ktoa*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int netmap_debug ; 
 int /*<<< orphan*/  FUNC4 (struct netmap_kring*) ; 
 int /*<<< orphan*/  FUNC5 (struct netmap_kring*) ; 
 int FUNC6 (struct netmap_kring*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct netmap_kring*) ; 
 int FUNC8 (struct netmap_kring*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (struct netmap_kring*,struct netmap_ring*) ; 
 int FUNC13 (struct netmap_kring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct nm_csb_atok*,struct netmap_ring*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct nm_csb_ktoa*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (char*,struct netmap_kring*) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static void
FUNC18(const struct sync_kloop_ring_args *a)
{
	struct netmap_kring *kring = a->kring;
	struct nm_csb_atok *csb_atok = a->csb_atok;
	struct nm_csb_ktoa *csb_ktoa = a->csb_ktoa;
	struct netmap_ring shadow_ring; /* shadow copy of the netmap_ring */
	bool more_txspace = false;
	uint32_t num_slots;
	int batch;

	if (FUNC17(FUNC6(kring, 1, NULL))) {
		return;
	}

	num_slots = kring->nkr_num_slots;

	/* Disable application --> kernel notifications. */
	if (!a->direct) {
		FUNC2(csb_ktoa, 0);
	}
	/* Copy the application kring pointers from the CSB */
	FUNC14(csb_atok, &shadow_ring, num_slots);

	for (;;) {
		batch = shadow_ring.head - kring->nr_hwcur;
		if (batch < 0)
			batch += num_slots;

#ifdef PTN_TX_BATCH_LIM
		if (batch > PTN_TX_BATCH_LIM(num_slots)) {
			/* If application moves ahead too fast, let's cut the move so
			 * that we don't exceed our batch limit. */
			uint32_t head_lim = kring->nr_hwcur + PTN_TX_BATCH_LIM(num_slots);

			if (head_lim >= num_slots)
				head_lim -= num_slots;
			nm_prdis(1, "batch: %d head: %d head_lim: %d", batch, shadow_ring.head,
					head_lim);
			shadow_ring.head = head_lim;
			batch = PTN_TX_BATCH_LIM(num_slots);
		}
#endif /* PTN_TX_BATCH_LIM */

		if (FUNC8(kring) <= (num_slots >> 1)) {
			shadow_ring.flags |= NAF_FORCE_RECLAIM;
		}

		/* Netmap prologue */
		shadow_ring.tail = kring->rtail;
		if (FUNC17(FUNC12(kring, &shadow_ring) >= num_slots)) {
			/* Reinit ring and enable notifications. */
			FUNC4(kring);
			if (!a->busy_wait) {
				FUNC2(csb_ktoa, 1);
			}
			break;
		}

		if (FUNC17(netmap_debug & NM_DEBUG_TXSYNC)) {
			FUNC16("pre txsync", kring);
		}

		if (FUNC17(kring->nm_sync(kring, shadow_ring.flags))) {
			if (!a->busy_wait) {
				/* Reenable notifications. */
				FUNC2(csb_ktoa, 1);
			}
			FUNC10("txsync() failed");
			break;
		}

		/*
		 * Finalize
		 * Copy kernel hwcur and hwtail into the CSB for the application sync(), and
		 * do the nm_sync_finalize.
		 */
		FUNC15(csb_ktoa, kring->nr_hwcur,
				kring->nr_hwtail);
		if (kring->rtail != kring->nr_hwtail) {
			/* Some more room available in the parent adapter. */
			kring->rtail = kring->nr_hwtail;
			more_txspace = true;
		}

		if (FUNC17(netmap_debug & NM_DEBUG_TXSYNC)) {
			FUNC16("post txsync", kring);
		}

		/* Interrupt the application if needed. */
#ifdef SYNC_KLOOP_POLL
		if (a->irq_ctx && more_txspace && csb_atok_intr_enabled(csb_atok)) {
			/* We could disable kernel --> application kicks here,
			 * to avoid spurious interrupts. */
			eventfd_signal(a->irq_ctx, 1);
			more_txspace = false;
		}
#endif /* SYNC_KLOOP_POLL */

		/* Read CSB to see if there is more work to do. */
		FUNC14(csb_atok, &shadow_ring, num_slots);
		if (shadow_ring.head == kring->rhead) {
			if (a->busy_wait) {
				break;
			}
			/*
			 * No more packets to transmit. We enable notifications and
			 * go to sleep, waiting for a kick from the application when new
			 * new slots are ready for transmission.
			 */
			/* Reenable notifications. */
			FUNC2(csb_ktoa, 1);
			/* Double check, with store-load memory barrier. */
			FUNC11();
			FUNC14(csb_atok, &shadow_ring, num_slots);
			if (shadow_ring.head != kring->rhead) {
				/* We won the race condition, there are more packets to
				 * transmit. Disable notifications and do another cycle */
				FUNC2(csb_ktoa, 0);
				continue;
			}
			break;
		}

		if (FUNC7(kring)) {
			/* No more available TX slots. We stop waiting for a notification
			 * from the backend (netmap_tx_irq). */
			FUNC9(1, "TX ring");
			break;
		}
	}

	FUNC5(kring);

#ifdef SYNC_KLOOP_POLL
	if (a->irq_ctx && more_txspace && csb_atok_intr_enabled(csb_atok)) {
		eventfd_signal(a->irq_ctx, 1);
	}
#endif /* SYNC_KLOOP_POLL */
}