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
struct file {int dummy; } ;
struct export_fd_buf {scalar_t__ remainder; int /*<<< orphan*/  fdp; int /*<<< orphan*/  flags; int /*<<< orphan*/  kif; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct export_fd_buf*) ; 

__attribute__((used)) static int
FUNC4(struct file *fp, int fd, cap_rights_t *rightsp,
    struct export_fd_buf *efbuf)
{
	int error;

	if (efbuf->remainder == 0)
		return (0);
	FUNC2(fp, fd, rightsp, &efbuf->kif, efbuf->fdp,
	    efbuf->flags);
	FUNC1(efbuf->fdp);
	error = FUNC3(efbuf);
	FUNC0(efbuf->fdp);
	return (error);
}