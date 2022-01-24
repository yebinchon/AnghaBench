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
struct netconfig {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_RPC ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct netconfig** FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct netconfig* netconfigs ; 

void *
FUNC1(void)
{
	struct netconfig **nconfp;

	nconfp = FUNC0(sizeof(struct netconfig *), M_RPC, M_WAITOK);
	*nconfp = netconfigs;

	return ((void *) nconfp);
}