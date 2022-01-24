#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct group {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  etcpath; } ;

/* Variables and functions */
 struct group* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct group*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int,struct group*,struct group*) ; 
 struct group* FUNC6 (struct group*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 () ; 
 int FUNC10 () ; 
 int FUNC11 (int) ; 

__attribute__((used)) static int
FUNC12(struct group * grp, char const * group)
{
	int pfd, tfd;
	struct group *gr = NULL;
	struct group *old_gr = NULL;

	if (grp != NULL)
		gr = FUNC6(grp);

	if (group != NULL)
		old_gr = FUNC0(group);

	if (FUNC8(conf.etcpath, NULL))
		FUNC2(1, "gr_init()");

	if ((pfd = FUNC9()) == -1) {
		FUNC7();
		FUNC2(1, "gr_lock()");
	}
	if ((tfd = FUNC11(-1)) == -1) {
		FUNC7();
		FUNC2(1, "gr_tmp()");
	}
	if (FUNC5(pfd, tfd, gr, old_gr) == -1) {
		FUNC7();
		FUNC1(tfd);
		FUNC2(1, "gr_copy()");
	}
	FUNC4(tfd);
	FUNC1(tfd);
	if (FUNC10() == -1) {
		FUNC7();
		FUNC2(1, "gr_mkdb()");
	}
	FUNC3(gr);
	FUNC7();
	return 0;
}