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
struct nfsrvsetattrdsdorpc {int done; int /*<<< orphan*/  dsna; int /*<<< orphan*/  na; int /*<<< orphan*/  nmp; int /*<<< orphan*/  vp; int /*<<< orphan*/  p; int /*<<< orphan*/  cred; int /*<<< orphan*/  fh; int /*<<< orphan*/  err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(void *arg, int pending)
{
	struct nfsrvsetattrdsdorpc *drpc;

	drpc = (struct nfsrvsetattrdsdorpc *)arg;
	drpc->err = FUNC0(&drpc->fh, drpc->cred, drpc->p,
	    drpc->vp, drpc->nmp, &drpc->na, &drpc->dsna);
	drpc->done = 1;
}