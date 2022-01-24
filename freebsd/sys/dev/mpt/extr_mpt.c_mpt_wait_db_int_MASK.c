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
struct mpt_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MPT_FAIL ; 
 int MPT_MAX_WAIT ; 
 int MPT_OK ; 
 int maxwait_int ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_softc*) ; 

__attribute__((used)) static int
FUNC3(struct mpt_softc *mpt)
{
	int i;

	for (i = 0; i < MPT_MAX_WAIT; i++) {
		if (FUNC1(FUNC2(mpt))) {
			maxwait_int = i > maxwait_int ? i : maxwait_int;
			return MPT_OK;
		}
		FUNC0(100);
	}
	return (MPT_FAIL);
}