#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ucred {int dummy; } ;
struct tty {struct cdev* t_dev; } ;
struct TYPE_3__ {struct tty* np_tty; struct TYPE_3__* np_other; int /*<<< orphan*/  np_callout; int /*<<< orphan*/  np_task; struct nmdmsoftc* np_pair; } ;
struct nmdmsoftc {TYPE_1__ ns_part2; TYPE_1__ ns_part1; int /*<<< orphan*/  ns_mtx; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_NMDM ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  TTYMK_CLONING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nmdmsoftc*,int /*<<< orphan*/ ) ; 
 struct nmdmsoftc* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nmdm_class ; 
 int /*<<< orphan*/  nmdm_count ; 
 int /*<<< orphan*/  nmdm_task_tty ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 void* FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct tty*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct tty*) ; 

__attribute__((used)) static void
FUNC13(void *arg, struct ucred *cred, char *name, int nameen,
    struct cdev **dev)
{
	struct nmdmsoftc *ns;
	struct tty *tp;
	char *end;
	int error;
	char endc;

	if (*dev != NULL)
		return;
	if (FUNC9(name, "nmdm", 4) != 0)
		return;
	if (FUNC8(name) <= FUNC8("nmdmX"))
		return;

	/* Device name must be "nmdm%s%c", where %c is 'A' or 'B'. */
	end = name + FUNC8(name) - 1;
	endc = *end;
	if (endc != 'A' && endc != 'B')
		return;

	ns = FUNC4(sizeof(*ns), M_NMDM, M_WAITOK | M_ZERO);
	FUNC6(&ns->ns_mtx, "nmdm", NULL, MTX_DEF);

	/* Hook the pairs together. */
	ns->ns_part1.np_pair = ns;
	ns->ns_part1.np_other = &ns->ns_part2;
	FUNC0(&ns->ns_part1.np_task, 0, nmdm_task_tty, &ns->ns_part1);
	FUNC2(&ns->ns_part1.np_callout, &ns->ns_mtx, 0);

	ns->ns_part2.np_pair = ns;
	ns->ns_part2.np_other = &ns->ns_part1;
	FUNC0(&ns->ns_part2.np_task, 0, nmdm_task_tty, &ns->ns_part2);
	FUNC2(&ns->ns_part2.np_callout, &ns->ns_mtx, 0);

	/* Create device nodes. */
	tp = ns->ns_part1.np_tty = FUNC10(&nmdm_class, &ns->ns_part1,
	    &ns->ns_mtx);
	*end = 'A';
	error = FUNC11(tp, NULL, endc == 'A' ? TTYMK_CLONING : 0,
	    "%s", name);
	if (error) {
		*end = endc;
		FUNC5(&ns->ns_mtx);
		FUNC3(ns, M_NMDM);
		return;
	}

	tp = ns->ns_part2.np_tty = FUNC10(&nmdm_class, &ns->ns_part2,
	    &ns->ns_mtx);
	*end = 'B';
	error = FUNC11(tp, NULL, endc == 'B' ? TTYMK_CLONING : 0,
	    "%s", name);
	if (error) {
		*end = endc;
		FUNC7(&ns->ns_mtx);
		/* see nmdm_free() */
		ns->ns_part1.np_other = NULL;
		FUNC1(&nmdm_count, 1);
		FUNC12(ns->ns_part1.np_tty);
		return;
	}

	if (endc == 'A')
		*dev = ns->ns_part1.np_tty->t_dev;
	else
		*dev = ns->ns_part2.np_tty->t_dev;

	*end = endc;
	FUNC1(&nmdm_count, 1);
}