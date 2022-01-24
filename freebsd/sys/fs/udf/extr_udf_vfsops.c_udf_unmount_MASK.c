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
struct udf_mnt {int im_flags; struct udf_mnt* s_table; int /*<<< orphan*/  im_dev; int /*<<< orphan*/  im_devvp; int /*<<< orphan*/  im_cp; scalar_t__ im_l2d; scalar_t__ im_d2l; } ;
struct mount {int /*<<< orphan*/  mnt_flag; int /*<<< orphan*/ * mnt_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (scalar_t__) ;} ;

/* Variables and functions */
 int FORCECLOSE ; 
 int MNT_FORCE ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  MNT_LOCAL ; 
 int /*<<< orphan*/  M_UDFMOUNT ; 
 int UDFMNT_KICONV ; 
 struct udf_mnt* FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct udf_mnt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 TYPE_1__* udf_iconv ; 
 int FUNC10 (struct mount*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct mount *mp, int mntflags)
{
	struct udf_mnt *udfmp;
	int error, flags = 0;

	udfmp = FUNC2(mp);

	if (mntflags & MNT_FORCE)
		flags |= FORCECLOSE;

	if ((error = FUNC10(mp, 0, flags, curthread)))
		return (error);

	if (udfmp->im_flags & UDFMNT_KICONV && udf_iconv) {
		if (udfmp->im_d2l)
			udf_iconv->close(udfmp->im_d2l);
#if 0
		if (udfmp->im_l2d)
			udf_iconv->close(udfmp->im_l2d);
#endif
	}

	FUNC5();
	FUNC7(udfmp->im_cp);
	FUNC6();
	FUNC11(udfmp->im_devvp);
	FUNC3(udfmp->im_dev);

	if (udfmp->s_table != NULL)
		FUNC4(udfmp->s_table, M_UDFMOUNT);

	FUNC4(udfmp, M_UDFMOUNT);

	mp->mnt_data = NULL;
	FUNC0(mp);
	mp->mnt_flag &= ~MNT_LOCAL;
	FUNC1(mp);

	return (0);
}