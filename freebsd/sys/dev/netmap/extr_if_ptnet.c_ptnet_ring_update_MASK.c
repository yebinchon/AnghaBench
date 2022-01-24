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
struct ptnet_queue {struct nm_csb_ktoa* ktoa; struct nm_csb_atok* atok; } ;
struct nm_csb_ktoa {int /*<<< orphan*/  kern_need_kick; } ;
struct nm_csb_atok {unsigned int sync_flags; } ;
struct netmap_ring {unsigned int head; unsigned int cur; } ;
struct netmap_kring {unsigned int rcur; unsigned int rhead; struct netmap_ring* ring; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nm_csb_atok*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ptnet_queue*) ; 

__attribute__((used)) static void
FUNC3(struct ptnet_queue *pq, struct netmap_kring *kring,
		  unsigned int head, unsigned int sync_flags)
{
	struct netmap_ring *ring = kring->ring;
	struct nm_csb_atok *atok = pq->atok;
	struct nm_csb_ktoa *ktoa = pq->ktoa;

	/* Some packets have been pushed to the netmap ring. We have
	 * to tell the host to process the new packets, updating cur
	 * and head in the CSB. */
	ring->head = ring->cur = head;

	/* Mimic nm_txsync_prologue/nm_rxsync_prologue. */
	kring->rcur = kring->rhead = head;

	FUNC1(atok, kring->rcur, kring->rhead);

	/* Kick the host if needed. */
	if (FUNC0(ktoa->kern_need_kick)) {
		atok->sync_flags = sync_flags;
		FUNC2(pq);
	}
}