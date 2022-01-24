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
typedef  scalar_t__ uint32_t ;
struct sync_kloop_ring_args {scalar_t__ irq_ctx; scalar_t__ busy_wait; int /*<<< orphan*/  direct; struct nm_csb_ktoa* csb_ktoa; struct nm_csb_atok* csb_atok; struct netmap_kring* kring; } ;
struct nm_csb_ktoa {int dummy; } ;
struct nm_csb_atok {int dummy; } ;
struct netmap_ring {scalar_t__ tail; int /*<<< orphan*/  head; int /*<<< orphan*/  flags; } ;
struct netmap_kring {scalar_t__ nkr_num_slots; scalar_t__ rtail; int (* nm_sync ) (struct netmap_kring*,int /*<<< orphan*/ ) ;scalar_t__ rhead; int /*<<< orphan*/  nr_hwtail; int /*<<< orphan*/  nr_hwcur; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NM_DEBUG_RXSYNC ; 
 int SYNC_LOOP_RX_DRY_CYCLES_MAX ; 
 scalar_t__ FUNC1 (struct nm_csb_atok*) ; 
 int /*<<< orphan*/  FUNC2 (struct nm_csb_ktoa*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int netmap_debug ; 
 int /*<<< orphan*/  FUNC4 (struct netmap_kring*) ; 
 int /*<<< orphan*/  FUNC5 (struct netmap_kring*) ; 
 int FUNC6 (struct netmap_kring*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (struct netmap_kring*,struct netmap_ring*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (struct netmap_kring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nm_csb_atok*,struct netmap_ring*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct nm_csb_ktoa*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct netmap_kring*) ; 
 scalar_t__ FUNC15 (struct netmap_kring*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static void
FUNC17(const struct sync_kloop_ring_args *a)
{

	struct netmap_kring *kring = a->kring;
	struct nm_csb_atok *csb_atok = a->csb_atok;
	struct nm_csb_ktoa *csb_ktoa = a->csb_ktoa;
	struct netmap_ring shadow_ring; /* shadow copy of the netmap_ring */
	int dry_cycles = 0;
	bool some_recvd = false;
	uint32_t num_slots;

	if (FUNC16(FUNC6(kring, 1, NULL))) {
		return;
	}

	num_slots = kring->nkr_num_slots;

	/* Get RX csb_atok and csb_ktoa pointers from the CSB. */
	num_slots = kring->nkr_num_slots;

	/* Disable notifications. */
	if (!a->direct) {
		FUNC2(csb_ktoa, 0);
	}
	/* Copy the application kring pointers from the CSB */
	FUNC12(csb_atok, &shadow_ring, num_slots);

	for (;;) {
		uint32_t hwtail;

		/* Netmap prologue */
		shadow_ring.tail = kring->rtail;
		if (FUNC16(FUNC9(kring, &shadow_ring) >= num_slots)) {
			/* Reinit ring and enable notifications. */
			FUNC4(kring);
			if (!a->busy_wait) {
				FUNC2(csb_ktoa, 1);
			}
			break;
		}

		if (FUNC16(netmap_debug & NM_DEBUG_RXSYNC)) {
			FUNC14("pre rxsync", kring);
		}

		if (FUNC16(kring->nm_sync(kring, shadow_ring.flags))) {
			if (!a->busy_wait) {
				/* Reenable notifications. */
				FUNC2(csb_ktoa, 1);
			}
			FUNC8("rxsync() failed");
			break;
		}

		/*
		 * Finalize
		 * Copy kernel hwcur and hwtail into the CSB for the application sync()
		 */
		hwtail = FUNC0(kring->nr_hwtail);
		FUNC13(csb_ktoa, kring->nr_hwcur, hwtail);
		if (kring->rtail != hwtail) {
			kring->rtail = hwtail;
			some_recvd = true;
			dry_cycles = 0;
		} else {
			dry_cycles++;
		}

		if (FUNC16(netmap_debug & NM_DEBUG_RXSYNC)) {
			FUNC14("post rxsync", kring);
		}

#ifdef SYNC_KLOOP_POLL
		/* Interrupt the application if needed. */
		if (a->irq_ctx && some_recvd && csb_atok_intr_enabled(csb_atok)) {
			/* We could disable kernel --> application kicks here,
			 * to avoid spurious interrupts. */
			eventfd_signal(a->irq_ctx, 1);
			some_recvd = false;
		}
#endif /* SYNC_KLOOP_POLL */

		/* Read CSB to see if there is more work to do. */
		FUNC12(csb_atok, &shadow_ring, num_slots);
		if (FUNC15(kring, shadow_ring.head)) {
			if (a->busy_wait) {
				break;
			}
			/*
			 * No more slots available for reception. We enable notification and
			 * go to sleep, waiting for a kick from the application when new receive
			 * slots are available.
			 */
			/* Reenable notifications. */
			FUNC2(csb_ktoa, 1);
			/* Double check, with store-load memory barrier. */
			FUNC10();
			FUNC12(csb_atok, &shadow_ring, num_slots);
			if (!FUNC15(kring, shadow_ring.head)) {
				/* We won the race condition, more slots are available. Disable
				 * notifications and do another cycle. */
				FUNC2(csb_ktoa, 0);
				continue;
			}
			break;
		}

		hwtail = FUNC0(kring->nr_hwtail);
		if (FUNC16(hwtail == kring->rhead ||
					dry_cycles >= SYNC_LOOP_RX_DRY_CYCLES_MAX)) {
			/* No more packets to be read from the backend. We stop and
			 * wait for a notification from the backend (netmap_rx_irq). */
			FUNC7(1, "nr_hwtail: %d rhead: %d dry_cycles: %d",
					hwtail, kring->rhead, dry_cycles);
			break;
		}
	}

	FUNC5(kring);

#ifdef SYNC_KLOOP_POLL
	/* Interrupt the application if needed. */
	if (a->irq_ctx && some_recvd && csb_atok_intr_enabled(csb_atok)) {
		eventfd_signal(a->irq_ctx, 1);
	}
#endif /* SYNC_KLOOP_POLL */
}