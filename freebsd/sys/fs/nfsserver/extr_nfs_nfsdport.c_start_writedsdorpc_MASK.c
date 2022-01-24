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
struct nfsrvwritedsdorpc {int done; int /*<<< orphan*/  err; int /*<<< orphan*/  p; int /*<<< orphan*/  cred; int /*<<< orphan*/  m; int /*<<< orphan*/  len; int /*<<< orphan*/  off; int /*<<< orphan*/  fh; int /*<<< orphan*/  nmp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg, int pending)
{
	struct nfsrvwritedsdorpc *drpc;

	drpc = (struct nfsrvwritedsdorpc *)arg;
	drpc->err = FUNC1(drpc->nmp, &drpc->fh, drpc->off,
	    drpc->len, NULL, drpc->m, drpc->cred, drpc->p);
	drpc->done = 1;
	FUNC0(4, "start_writedsdorpc: err=%d\n", drpc->err);
}