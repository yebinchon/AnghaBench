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
struct thread {struct file* td_fpop; } ;
struct knote {int dummy; } ;
struct file {int dummy; } ;
struct cdevsw {int (* d_kqfilter ) (struct cdev*,struct knote*) ;} ;
struct cdev {int dummy; } ;

/* Variables and functions */
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC0 (struct cdev*,int) ; 
 int FUNC1 (struct file*,struct cdev**,struct cdevsw**,int*) ; 
 int FUNC2 (struct cdev*,struct knote*) ; 

__attribute__((used)) static int
FUNC3(struct file *fp, struct knote *kn)
{
	struct cdev *dev;
	struct cdevsw *dsw;
	int error, ref;
	struct file *fpop;
	struct thread *td;

	td = curthread;
	fpop = td->td_fpop;
	error = FUNC1(fp, &dev, &dsw, &ref);
	if (error)
		return (error);
	error = dsw->d_kqfilter(dev, kn);
	td->td_fpop = fpop;
	FUNC0(dev, ref);
	return (error);
}