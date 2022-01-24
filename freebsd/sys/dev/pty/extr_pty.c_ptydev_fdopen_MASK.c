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
struct file {int dummy; } ;
struct cdev {int /*<<< orphan*/  si_drv1; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int EBUSY ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC0 (uintptr_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct cdev*) ; 
 int FUNC4 (int,struct thread*,struct file*,struct cdev*,char*) ; 
 int /*<<< orphan*/  pty_warningcnt ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct cdev *dev, int fflags, struct thread *td, struct file *fp)
{
	int error;
	char name[6]; /* "ttyXX" */

	if (!FUNC0((uintptr_t *)&dev->si_drv1, 0, 1))
		return (EBUSY);

	/* Generate device name and create PTY. */
	FUNC5(name, FUNC3(dev), sizeof(name));
	name[0] = 't';

	error = FUNC4(fflags & (FREAD|FWRITE), td, fp, dev, name);
	if (error != 0) {
		FUNC2(dev);
		return (error);
	}

	/* Raise a warning when a legacy PTY has been allocated. */
	FUNC1(&pty_warningcnt, "is using legacy pty devices");

	return (0);
}