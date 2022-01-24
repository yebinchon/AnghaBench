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
struct filedescent {struct file* fde_file; int /*<<< orphan*/  fde_caps; } ;
struct filedesc {int dummy; } ;
struct filecaps {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct filedescent*) ; 
 struct filedescent* FUNC3 (struct filedesc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct filecaps*,int) ; 

int
FUNC5(struct filedesc *fdp, int fd, cap_rights_t *needrightsp,
    struct file **fpp, struct filecaps *havecapsp)
{
	struct filedescent *fde;
	int error;

	FUNC0(fdp);

	fde = FUNC3(fdp, fd);
	if (fde == NULL) {
		error = EBADF;
		goto out;
	}

#ifdef CAPABILITIES
	error = cap_check(cap_rights_fde_inline(fde), needrightsp);
	if (error != 0)
		goto out;
#endif

	if (havecapsp != NULL)
		FUNC4(&fde->fde_caps, havecapsp, true);

	*fpp = fde->fde_file;

	error = 0;
out:
	return (error);
}