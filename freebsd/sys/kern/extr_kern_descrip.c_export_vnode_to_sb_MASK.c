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
struct vnode {int dummy; } ;
struct export_fd_buf {scalar_t__ remainder; int /*<<< orphan*/ * fdp; int /*<<< orphan*/  flags; int /*<<< orphan*/  kif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct export_fd_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct vnode *vp, int fd, int fflags,
    struct export_fd_buf *efbuf)
{
	int error;

	if (efbuf->remainder == 0)
		return (0);
	if (efbuf->fdp != NULL)
		FUNC1(efbuf->fdp);
	FUNC3(vp, fd, fflags, &efbuf->kif, efbuf->flags);
	error = FUNC2(efbuf);
	if (efbuf->fdp != NULL)
		FUNC0(efbuf->fdp);
	return (error);
}