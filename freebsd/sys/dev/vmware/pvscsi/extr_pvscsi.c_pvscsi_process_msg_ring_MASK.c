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
struct pvscsi_softc {struct pvscsi_ring_msg_desc* msg_ring; struct pvscsi_rings_state* rings_state; int /*<<< orphan*/  lock; } ;
struct pvscsi_rings_state {int msg_cons_idx; int msg_prod_idx; int /*<<< orphan*/  msg_num_entries_log2; } ;
struct pvscsi_ring_msg_desc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pvscsi_softc*,struct pvscsi_ring_msg_desc*) ; 

__attribute__((used)) static void
FUNC4(struct pvscsi_softc *sc)
{
	struct pvscsi_ring_msg_desc *ring;
	struct pvscsi_rings_state *s;
	struct pvscsi_ring_msg_desc *e;
	uint32_t mask;

	FUNC2(&sc->lock, MA_OWNED);

	s = sc->rings_state;
	ring = sc->msg_ring;
	mask = FUNC0(s->msg_num_entries_log2);

	while (s->msg_cons_idx != s->msg_prod_idx) {
		e = ring + (s->msg_cons_idx & mask);

		FUNC3(sc, e);

		FUNC1();
		s->msg_cons_idx++;
	}
}