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
struct svc_dg_data {unsigned long su_xid; } ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
 struct svc_dg_data* FUNC0 (int /*<<< orphan*/ *) ; 

unsigned long
FUNC1(SVCXPRT *xprt)
{
	struct svc_dg_data *su;

	if (xprt == NULL)
		return(0);
	su = FUNC0(xprt);
	return(su->su_xid);
}