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
struct dadq {int /*<<< orphan*/  dad_na_icount; } ;

/* Variables and functions */
 struct dadq* FUNC0 (struct ifaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(struct ifaddr *ifa)
{
	struct dadq *dp;

	if (ifa == NULL)
		FUNC2("ifa == NULL in nd6_dad_na_input");

	dp = FUNC0(ifa, NULL);
	if (dp != NULL) {
		dp->dad_na_icount++;
		FUNC1(dp);
	}
}