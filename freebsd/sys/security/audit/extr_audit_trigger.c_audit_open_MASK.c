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
struct cdev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int audit_isopen ; 
 int /*<<< orphan*/  audit_trigger_mtx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
	int error;

	/* Only one process may open the device at a time. */
	FUNC0(&audit_trigger_mtx);
	if (!audit_isopen) {
		error = 0;
		audit_isopen = 1;
	} else
		error = EBUSY;
	FUNC1(&audit_trigger_mtx);

	return (error);
}