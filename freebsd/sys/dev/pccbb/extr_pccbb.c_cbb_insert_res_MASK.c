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
struct resource {int dummy; } ;
struct cbb_softc {int /*<<< orphan*/  rl; } ;
struct cbb_reslist {int type; int rid; struct resource* res; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cbb_reslist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 struct cbb_reslist* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(struct cbb_softc *sc, struct resource *res, int type,
    int rid)
{
	struct cbb_reslist *rle;

	/*
	 * Need to record allocated resource so we can iterate through
	 * it later.
	 */
	rle = FUNC1(sizeof(struct cbb_reslist), M_DEVBUF, M_NOWAIT);
	if (rle == NULL)
		FUNC2("cbb_cardbus_alloc_resource: can't record entry!");
	rle->res = res;
	rle->type = type;
	rle->rid = rid;
	FUNC0(&sc->rl, rle, link);
}