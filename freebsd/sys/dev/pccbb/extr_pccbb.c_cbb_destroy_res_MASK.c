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
struct cbb_softc {int /*<<< orphan*/  rl; int /*<<< orphan*/  dev; } ;
struct cbb_reslist {int /*<<< orphan*/  res; int /*<<< orphan*/  type; int /*<<< orphan*/  rid; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 struct cbb_reslist* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cbb_reslist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct cbb_softc *sc)
{
	struct cbb_reslist *rle;

	while ((rle = FUNC0(&sc->rl)) != NULL) {
		FUNC2(sc->dev, "Danger Will Robinson: Resource "
		    "left allocated!  This is a bug... "
		    "(rid=%x, type=%d, addr=%jx)\n", rle->rid, rle->type,
		    FUNC4(rle->res));
		FUNC1(&sc->rl, link);
		FUNC3(rle, M_DEVBUF);
	}
}