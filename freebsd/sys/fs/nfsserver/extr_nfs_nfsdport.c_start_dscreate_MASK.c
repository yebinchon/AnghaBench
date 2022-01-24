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
struct nfsrvdscreate {int done; int /*<<< orphan*/  err; int /*<<< orphan*/  p; int /*<<< orphan*/  tcred; int /*<<< orphan*/  pf; int /*<<< orphan*/  fh; int /*<<< orphan*/  va; int /*<<< orphan*/  createva; int /*<<< orphan*/  dvp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void *arg, int pending)
{
	struct nfsrvdscreate *dsc;

	dsc = (struct nfsrvdscreate *)arg;
	dsc->err = FUNC1(dsc->dvp, &dsc->createva, &dsc->va, &dsc->fh,
	    dsc->pf, NULL, NULL, dsc->tcred, dsc->p, NULL);
	dsc->done = 1;
	FUNC0(4, "start_dscreate: err=%d\n", dsc->err);
}