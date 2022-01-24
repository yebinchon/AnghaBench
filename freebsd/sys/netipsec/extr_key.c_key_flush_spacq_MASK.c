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
typedef  scalar_t__ time_t ;
struct secspacq {scalar_t__ created; } ;

/* Variables and functions */
 struct secspacq* FUNC0 (int /*<<< orphan*/ *) ; 
 struct secspacq* FUNC1 (struct secspacq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct secspacq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IPSEC_SAQ ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ V_key_blockacq_lifetime ; 
 int /*<<< orphan*/  V_spacqtree ; 
 scalar_t__ FUNC5 (struct secspacq*) ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  FUNC6 (struct secspacq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(time_t now)
{
	struct secspacq *acq, *nextacq;

	/* SP ACQ tree */
	FUNC3();
	for (acq = FUNC0(&V_spacqtree); acq != NULL; acq = nextacq) {
		nextacq = FUNC1(acq, chain);
		if (now - acq->created > V_key_blockacq_lifetime
		 && FUNC5(acq)) {
			FUNC2(acq, chain);
			FUNC6(acq, M_IPSEC_SAQ);
		}
	}
	FUNC4();
}