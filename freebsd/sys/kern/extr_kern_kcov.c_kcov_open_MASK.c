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
struct thread {int dummy; } ;
struct kcov_info {int mode; int /*<<< orphan*/ * thread; int /*<<< orphan*/  state; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KCOV_STATE_OPEN ; 
 int /*<<< orphan*/  M_KCOV_INFO ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC0 (struct kcov_info*,int /*<<< orphan*/  (*) (struct kcov_info*)) ; 
 int /*<<< orphan*/  FUNC1 (struct kcov_info*) ; 
 struct kcov_info* FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
	struct kcov_info *info;
	int error;

	info = FUNC2(sizeof(struct kcov_info), M_KCOV_INFO, M_ZERO | M_WAITOK);
	info->state = KCOV_STATE_OPEN;
	info->thread = NULL;
	info->mode = -1;

	if ((error = FUNC0(info, kcov_mmap_cleanup)) != 0)
		FUNC1(info);

	return (error);
}