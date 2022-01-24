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
struct md_s {int type; int unit; int /*<<< orphan*/  queue_mtx; int /*<<< orphan*/  stat_mtx; int /*<<< orphan*/  name; int /*<<< orphan*/  procp; int /*<<< orphan*/  bio_queue; } ;
typedef  enum md_types { ____Placeholder_md_types } md_types ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct md_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct md_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_MD ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct md_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct md_s*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  md_kthread ; 
 int /*<<< orphan*/  md_softc_list ; 
 int /*<<< orphan*/  md_uh ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct md_s *
FUNC12(int unit, int *errp, enum md_types type)
{
	struct md_s *sc;
	int error;

	*errp = 0;
	if (unit == -1)
		unit = FUNC2(md_uh);
	else
		unit = FUNC3(md_uh, unit);

	if (unit == -1) {
		*errp = EBUSY;
		return (NULL);
	}

	sc = (struct md_s *)FUNC8(sizeof *sc, M_MD, M_WAITOK | M_ZERO);
	sc->type = type;
	FUNC4(&sc->bio_queue);
	FUNC10(&sc->queue_mtx, "md bio queue", NULL, MTX_DEF);
	FUNC10(&sc->stat_mtx, "md stat", NULL, MTX_DEF);
	sc->unit = unit;
	FUNC11(sc->name, "md%d", unit);
	FUNC0(&md_softc_list, sc, list);
	error = FUNC7(md_kthread, sc, &sc->procp, 0, 0,"%s", sc->name);
	if (error == 0)
		return (sc);
	FUNC1(sc, list);
	FUNC9(&sc->stat_mtx);
	FUNC9(&sc->queue_mtx);
	FUNC6(md_uh, sc->unit);
	FUNC5(sc, M_MD);
	*errp = error;
	return (NULL);
}