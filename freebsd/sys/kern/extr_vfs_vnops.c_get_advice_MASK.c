#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uio {scalar_t__ uio_offset; scalar_t__ uio_resid; } ;
struct mtx {int dummy; } ;
struct file {TYPE_1__* f_advice; TYPE_2__* f_vnode; } ;
struct TYPE_4__ {scalar_t__ v_type; } ;
struct TYPE_3__ {scalar_t__ fa_start; scalar_t__ fa_end; int fa_advice; } ;

/* Variables and functions */
 int POSIX_FADV_NORMAL ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC0 (struct mtx*) ; 
 struct mtx* FUNC1 (int /*<<< orphan*/ ,struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 
 int /*<<< orphan*/  mtxpool_sleep ; 

__attribute__((used)) static int
FUNC3(struct file *fp, struct uio *uio)
{
	struct mtx *mtxp;
	int ret;

	ret = POSIX_FADV_NORMAL;
	if (fp->f_advice == NULL || fp->f_vnode->v_type != VREG)
		return (ret);

	mtxp = FUNC1(mtxpool_sleep, fp);
	FUNC0(mtxp);
	if (fp->f_advice != NULL &&
	    uio->uio_offset >= fp->f_advice->fa_start &&
	    uio->uio_offset + uio->uio_resid <= fp->f_advice->fa_end)
		ret = fp->f_advice->fa_advice;
	FUNC2(mtxp);
	return (ret);
}