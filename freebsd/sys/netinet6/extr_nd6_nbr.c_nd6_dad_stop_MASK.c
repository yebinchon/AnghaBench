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
struct ifaddr {int dummy; } ;
struct dadq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dadq*) ; 
 struct dadq* FUNC1 (struct ifaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC3 (struct dadq*) ; 

void
FUNC4(struct ifaddr *ifa)
{
	struct dadq *dp;

	dp = FUNC1(ifa, NULL);
	if (!dp) {
		/* DAD wasn't started yet */
		return;
	}

	FUNC3(dp);
	FUNC0(dp);

	/* Release this function's reference, acquired by nd6_dad_find(). */
	FUNC2(dp);
}