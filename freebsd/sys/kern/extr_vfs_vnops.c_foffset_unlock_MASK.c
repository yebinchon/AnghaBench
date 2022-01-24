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
struct file {int f_vnread_flags; void* f_nextoff; void* f_offset; } ;
typedef  void* off_t ;

/* Variables and functions */
 int FOFFSET_LOCKED ; 
 int FOFFSET_LOCK_WAITING ; 
 int FOF_NEXTOFF ; 
 int FOF_NOLOCK ; 
 int FOF_NOUPDATE ; 
 int FOF_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtx*) ; 
 struct mtx* FUNC2 (int /*<<< orphan*/ ,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 
 int /*<<< orphan*/  mtxpool_sleep ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 

void
FUNC5(struct file *fp, off_t val, int flags)
{
	struct mtx *mtxp;

	FUNC0((flags & FOF_OFFSET) == 0, ("FOF_OFFSET passed"));

#if OFF_MAX <= LONG_MAX
	if ((flags & FOF_NOLOCK) != 0) {
		if ((flags & FOF_NOUPDATE) == 0)
			fp->f_offset = val;
		if ((flags & FOF_NEXTOFF) != 0)
			fp->f_nextoff = val;
		return;
	}
#endif

	mtxp = FUNC2(mtxpool_sleep, fp);
	FUNC1(mtxp);
	if ((flags & FOF_NOUPDATE) == 0)
		fp->f_offset = val;
	if ((flags & FOF_NEXTOFF) != 0)
		fp->f_nextoff = val;
	if ((flags & FOF_NOLOCK) == 0) {
		FUNC0((fp->f_vnread_flags & FOFFSET_LOCKED) != 0,
		    ("Lost FOFFSET_LOCKED"));
		if (fp->f_vnread_flags & FOFFSET_LOCK_WAITING)
			FUNC4(&fp->f_vnread_flags);
		fp->f_vnread_flags = 0;
	}
	FUNC3(mtxp);
}