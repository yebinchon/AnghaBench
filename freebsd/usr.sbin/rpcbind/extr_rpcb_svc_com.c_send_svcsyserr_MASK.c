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
struct finfo {scalar_t__ reply_type; } ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
 scalar_t__ RPCBPROC_INDIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct finfo*) ; 

__attribute__((used)) static void
FUNC2(SVCXPRT *xprt, struct finfo *fi)
{
	if (fi->reply_type == RPCBPROC_INDIRECT) {
		FUNC1(xprt, fi);
		FUNC0(xprt);
	}
	return;
}