#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int iq; } ;
struct octeon_device {struct lio_instr_queue** instr_queue; TYPE_1__ io_qmask; } ;
struct mbuf {int dummy; } ;
struct lio_instr_queue {int /*<<< orphan*/  enq_lock; int /*<<< orphan*/  br; } ;
struct lio {struct octeon_device* oct_dev; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct octeon_device*) ; 
 struct mbuf* FUNC2 (int /*<<< orphan*/ ) ; 
 struct lio* FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(struct ifnet *ifp)
{
	struct lio		*lio = FUNC3(ifp);
	struct octeon_device	*oct = lio->oct_dev;
	struct lio_instr_queue	*iq;
	struct mbuf		*m;
	int	i;

	for (i = 0; i < FUNC1(oct); i++) {
		if (!(oct->io_qmask.iq & FUNC0(i)))
			continue;

		iq = oct->instr_queue[i];

		FUNC6(&iq->enq_lock);
		while ((m = FUNC2(iq->br)) != NULL)
			FUNC5(m);

		FUNC7(&iq->enq_lock);
	}

	FUNC4(ifp);
}