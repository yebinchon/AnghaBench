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
typedef  int u_int ;
struct thread {int dummy; } ;
struct mqueue {int /*<<< orphan*/  mq_curmsgs; int /*<<< orphan*/  mq_msgsize; int /*<<< orphan*/  mq_maxmsg; } ;
struct mq_attr {int mq_flags; int /*<<< orphan*/  mq_curmsgs; int /*<<< orphan*/  mq_msgsize; int /*<<< orphan*/  mq_maxmsg; } ;
struct file {int f_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int O_NONBLOCK ; 
 scalar_t__ FUNC1 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,struct thread*) ; 
 int FUNC3 (struct thread*,int,struct file**,int /*<<< orphan*/ *,struct mqueue**) ; 

__attribute__((used)) static int
FUNC4(struct thread *td, int mqd, const struct mq_attr *attr,
    struct mq_attr *oattr)
{
	struct mqueue *mq;
	struct file *fp;
	u_int oflag, flag;
	int error;

	FUNC0(mqd);
	if (attr != NULL && (attr->mq_flags & ~O_NONBLOCK) != 0)
		return (EINVAL);
	error = FUNC3(td, mqd, &fp, NULL, &mq);
	if (error)
		return (error);
	oattr->mq_maxmsg  = mq->mq_maxmsg;
	oattr->mq_msgsize = mq->mq_msgsize;
	oattr->mq_curmsgs = mq->mq_curmsgs;
	if (attr != NULL) {
		do {
			oflag = flag = fp->f_flag;
			flag &= ~O_NONBLOCK;
			flag |= (attr->mq_flags & O_NONBLOCK);
		} while (FUNC1(&fp->f_flag, oflag, flag) == 0);
	} else
		oflag = fp->f_flag;
	oattr->mq_flags = (O_NONBLOCK & oflag);
	FUNC2(fp, td);
	return (error);
}