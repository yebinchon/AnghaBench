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
struct file {struct cdev_privdata* f_cdevpriv; } ;
struct cdev_privdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cdevpriv_mtx ; 
 int /*<<< orphan*/  FUNC0 (struct cdev_privdata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct file *fp)
{
	struct cdev_privdata *p;

	FUNC1(&cdevpriv_mtx);
	if ((p = fp->f_cdevpriv) == NULL) {
		FUNC2(&cdevpriv_mtx);
		return;
	}
	FUNC0(p);
}