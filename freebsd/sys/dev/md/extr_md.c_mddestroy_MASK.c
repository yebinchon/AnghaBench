#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct md_s {int flags; int* procp; int /*<<< orphan*/  unit; scalar_t__ uma; scalar_t__ indir; int /*<<< orphan*/ * object; int /*<<< orphan*/ * cred; TYPE_1__* vnode; int /*<<< orphan*/  queue_mtx; int /*<<< orphan*/  stat_mtx; int /*<<< orphan*/ * devstat; scalar_t__ gp; } ;
struct TYPE_4__ {int /*<<< orphan*/  v_vflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct md_s*,int /*<<< orphan*/ ) ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int MD_EXITING ; 
 int MD_PROVIDERGONE ; 
 int MD_READONLY ; 
 int MD_SHUTDOWN ; 
 int /*<<< orphan*/  M_MD ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VV_MD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct md_s*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct md_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  md_uh ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int,int /*<<< orphan*/ *,struct thread*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct md_s*) ; 

__attribute__((used)) static int
FUNC19(struct md_s *sc, struct thread *td)
{

	if (sc->gp) {
		FUNC7();
		FUNC9(sc->gp, ENXIO);
		FUNC8();

		FUNC12(&sc->queue_mtx);
		while (!(sc->flags & MD_PROVIDERGONE))
			FUNC10(&sc->flags, &sc->queue_mtx, PRIBIO, "mddestroy", 0);
		FUNC13(&sc->queue_mtx);
	}
	if (sc->devstat) {
		FUNC4(sc->devstat);
		sc->devstat = NULL;
	}
	FUNC12(&sc->queue_mtx);
	sc->flags |= MD_SHUTDOWN;
	FUNC18(sc);
	while (!(sc->flags & MD_EXITING))
		FUNC10(sc->procp, &sc->queue_mtx, PRIBIO, "mddestroy", hz / 10);
	FUNC13(&sc->queue_mtx);
	FUNC11(&sc->stat_mtx);
	FUNC11(&sc->queue_mtx);
	if (sc->vnode != NULL) {
		FUNC17(sc->vnode, LK_EXCLUSIVE | LK_RETRY);
		sc->vnode->v_vflag &= ~VV_MD;
		FUNC1(sc->vnode, 0);
		(void)FUNC16(sc->vnode, sc->flags & MD_READONLY ?
		    FREAD : (FREAD|FWRITE), sc->cred, td);
	}
	if (sc->cred != NULL)
		FUNC2(sc->cred);
	if (sc->object != NULL)
		FUNC15(sc->object);
	if (sc->indir)
		FUNC3(sc, sc->indir);
	if (sc->uma)
		FUNC14(sc->uma);

	FUNC0(sc, list);
	FUNC6(md_uh, sc->unit);
	FUNC5(sc, M_MD);
	return (0);
}