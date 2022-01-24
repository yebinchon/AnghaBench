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
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int FWRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
	int error;

	if (oflags & FWRITE) {
		error = FUNC0(td->td_ucred, 0);
		if (error)
			return (error);
	}

	return (0);
}