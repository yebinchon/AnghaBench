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
typedef  int /*<<< orphan*/  u_short ;
struct bsm_domain {int /*<<< orphan*/  bd_bsm_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSM_PF_UNKNOWN ; 
 struct bsm_domain* FUNC0 (int) ; 

u_short
FUNC1(int local_domain)
{
	const struct bsm_domain *bstp;

	bstp = FUNC0(local_domain);
	if (bstp == NULL)
		return (BSM_PF_UNKNOWN);
	return (bstp->bd_bsm_domain);
}