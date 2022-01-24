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
struct mtx {int dummy; } ;
struct file {int f_vnread_flags; int /*<<< orphan*/  f_offset; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int FOFFSET_LOCKED ; 
 int FOFFSET_LOCK_WAITING ; 
 int FOF_NOLOCK ; 
 int FOF_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ PUSER ; 
 int /*<<< orphan*/  FUNC1 (int*,struct mtx*,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 
 struct mtx* FUNC3 (int /*<<< orphan*/ ,struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtx*) ; 
 int /*<<< orphan*/  mtxpool_sleep ; 

off_t
FUNC5(struct file *fp, int flags)
{
	struct mtx *mtxp;
	off_t res;

	FUNC0((flags & FOF_OFFSET) == 0, ("FOF_OFFSET passed"));

#if OFF_MAX <= LONG_MAX
	/*
	 * Caller only wants the current f_offset value.  Assume that
	 * the long and shorter integer types reads are atomic.
	 */
	if ((flags & FOF_NOLOCK) != 0)
		return (fp->f_offset);
#endif

	/*
	 * According to McKusick the vn lock was protecting f_offset here.
	 * It is now protected by the FOFFSET_LOCKED flag.
	 */
	mtxp = FUNC3(mtxpool_sleep, fp);
	FUNC2(mtxp);
	if ((flags & FOF_NOLOCK) == 0) {
		while (fp->f_vnread_flags & FOFFSET_LOCKED) {
			fp->f_vnread_flags |= FOFFSET_LOCK_WAITING;
			FUNC1(&fp->f_vnread_flags, mtxp, PUSER -1,
			    "vofflock", 0);
		}
		fp->f_vnread_flags |= FOFFSET_LOCKED;
	}
	res = fp->f_offset;
	FUNC4(mtxp);
	return (res);
}