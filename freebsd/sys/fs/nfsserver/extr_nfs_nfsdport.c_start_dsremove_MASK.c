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
struct nfsrvdsremove {int done; int /*<<< orphan*/  err; int /*<<< orphan*/  p; int /*<<< orphan*/  tcred; int /*<<< orphan*/  fname; int /*<<< orphan*/  dvp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg, int pending)
{
	struct nfsrvdsremove *dsrm;

	dsrm = (struct nfsrvdsremove *)arg;
	dsrm->err = FUNC1(dsrm->dvp, dsrm->fname, dsrm->tcred,
	    dsrm->p);
	dsrm->done = 1;
	FUNC0(4, "start_dsremove: err=%d\n", dsrm->err);
}