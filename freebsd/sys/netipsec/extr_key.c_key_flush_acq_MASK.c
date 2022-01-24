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
struct secacq {scalar_t__ created; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct secacq* FUNC2 (int /*<<< orphan*/ *) ; 
 struct secacq* FUNC3 (struct secacq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct secacq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IPSEC_SAQ ; 
 int /*<<< orphan*/  V_acqtree ; 
 scalar_t__ V_key_blockacq_lifetime ; 
 int /*<<< orphan*/  addrhash ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  FUNC5 (struct secacq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  seqhash ; 

__attribute__((used)) static void
FUNC6(time_t now)
{
	struct secacq *acq, *nextacq;

	/* ACQ tree */
	FUNC0();
	acq = FUNC2(&V_acqtree);
	while (acq != NULL) {
		nextacq = FUNC3(acq, chain);
		if (now - acq->created > V_key_blockacq_lifetime) {
			FUNC4(acq, chain);
			FUNC4(acq, addrhash);
			FUNC4(acq, seqhash);
			FUNC5(acq, M_IPSEC_SAQ);
		}
		acq = nextacq;
	}
	FUNC1();
}