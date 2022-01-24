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
struct uio {scalar_t__ uio_resid; } ;
struct msgbuf {int dummy; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int IO_NDELAY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  log_wakeup ; 
 int FUNC2 (struct msgbuf*,char*,int) ; 
 scalar_t__ FUNC3 (struct msgbuf*) ; 
 int /*<<< orphan*/  msgbuf_lock ; 
 struct msgbuf* msgbufp ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,int,struct uio*) ; 

__attribute__((used)) static	int
FUNC7(struct cdev *dev, struct uio *uio, int flag)
{
	char buf[128];
	struct msgbuf *mbp = msgbufp;
	int error = 0, l;

	FUNC4(&msgbuf_lock);
	while (FUNC3(mbp) == 0) {
		if (flag & IO_NDELAY) {
			FUNC5(&msgbuf_lock);
			return (EWOULDBLOCK);
		}
		if ((error = FUNC0(&log_wakeup, &msgbuf_lock)) != 0) {
			FUNC5(&msgbuf_lock);
			return (error);
		}
	}

	while (uio->uio_resid > 0) {
		l = FUNC1(sizeof(buf), uio->uio_resid);
		l = FUNC2(mbp, buf, l);
		if (l == 0)
			break;
		FUNC5(&msgbuf_lock);
		error = FUNC6(buf, l, uio);
		if (error || uio->uio_resid == 0)
			return (error);
		FUNC4(&msgbuf_lock);
	}
	FUNC5(&msgbuf_lock);
	return (error);
}