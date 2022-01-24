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
typedef  int /*<<< orphan*/  u_int32_t ;
struct finfo {int /*<<< orphan*/  caller_xid; int /*<<< orphan*/  caller_addr; } ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(SVCXPRT *xprt, struct finfo *fi)
{
	u_int32_t *xidp;

	FUNC1(FUNC2(xprt), fi->caller_addr);
	xidp = FUNC0(xprt);
	*xidp = fi->caller_xid;
}