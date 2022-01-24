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
struct nd_opt_nonce {int dummy; } ;
struct ifaddr {int dummy; } ;
struct dadq {int /*<<< orphan*/  dad_ns_icount; } ;

/* Variables and functions */
 scalar_t__ V_dad_enhanced ; 
 struct dadq* FUNC0 (struct ifaddr*,struct nd_opt_nonce*) ; 
 int /*<<< orphan*/  FUNC1 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(struct ifaddr *ifa, struct nd_opt_nonce *ndopt_nonce)
{
	struct dadq *dp;

	if (ifa == NULL)
		FUNC2("ifa == NULL in nd6_dad_ns_input");

	/* Ignore Nonce option when Enhanced DAD is disabled. */
	if (V_dad_enhanced == 0)
		ndopt_nonce = NULL;
	dp = FUNC0(ifa, ndopt_nonce);
	if (dp == NULL)
		return;

	dp->dad_ns_icount++;
	FUNC1(dp);
}