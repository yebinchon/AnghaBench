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
struct dadq {int dad_ondadq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct dadq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_dadq ; 
 int /*<<< orphan*/  dad_list ; 
 int /*<<< orphan*/  FUNC3 (struct dadq*) ; 

__attribute__((used)) static void
FUNC4(struct dadq *dp)
{

	FUNC0();
	if (dp->dad_ondadq) {
		/*
		 * Remove dp from the dadq and release the dadq's
		 * reference.
		 */
		FUNC2(&V_dadq, dp, dad_list);
		dp->dad_ondadq = false;
		FUNC1();
		FUNC3(dp);
	} else
		FUNC1();
}