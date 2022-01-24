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
struct module {int dummy; } ;
typedef  int /*<<< orphan*/ * eventhandler_tag ;

/* Variables and functions */
 int EINVAL ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  fuse_mtx ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  fuse_pbuf_zone ; 
 int /*<<< orphan*/  fuse_vfsconf ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int nswbuf ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct module *m, int what, void *arg)
{
	static eventhandler_tag eh_tag = NULL;
	int err = 0;

	switch (what) {
	case MOD_LOAD:			/* kldload */
		FUNC7(&fuse_mtx, "fuse_mtx", NULL, MTX_DEF);
		err = FUNC1();
		if (err) {
			FUNC6(&fuse_mtx);
			return (err);
		}
		FUNC4();
		FUNC2();
		FUNC3();
		FUNC5();
		fuse_pbuf_zone = FUNC8("fusepbuf", nswbuf / 2);

		/* vfs_modevent ignores its first arg */
		if ((err = FUNC10(NULL, what, &fuse_vfsconf)))
			FUNC0(eh_tag);
		break;
	case MOD_UNLOAD:
		if ((err = FUNC10(NULL, what, &fuse_vfsconf)))
			return (err);
		FUNC0(eh_tag);
		FUNC9(fuse_pbuf_zone);
		break;
	default:
		return (EINVAL);
	}

	return (err);
}