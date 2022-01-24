#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ucred {int dummy; } ;
struct thread {struct file* td_fpop; } ;
struct file {int dummy; } ;
struct cdevsw {int (* d_poll ) (struct cdev*,int,struct thread*) ;} ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int (* fo_poll ) (struct file*,int,struct ucred*,struct thread*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cdev*,int) ; 
 int FUNC1 (struct file*,struct cdev**,struct cdevsw**,int*) ; 
 int FUNC2 (struct file*,int,struct ucred*,struct thread*) ; 
 int FUNC3 (struct cdev*,int,struct thread*) ; 
 TYPE_1__ vnops ; 

__attribute__((used)) static int
FUNC4(struct file *fp, int events, struct ucred *cred, struct thread *td)
{
	struct cdev *dev;
	struct cdevsw *dsw;
	int error, ref;
	struct file *fpop;

	fpop = td->td_fpop;
	error = FUNC1(fp, &dev, &dsw, &ref);
	if (error != 0) {
		error = vnops.fo_poll(fp, events, cred, td);
		return (error);
	}
	error = dsw->d_poll(dev, events, td);
	td->td_fpop = fpop;
	FUNC0(dev, ref);
	return(error);
}