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
struct uio {int uio_resid; } ;
struct tty {int /*<<< orphan*/  t_mtx; } ;
struct snp_softc {int /*<<< orphan*/  snp_outwait; int /*<<< orphan*/  snp_outq; struct tty* snp_tty; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int EWOULDBLOCK ; 
 int O_NONBLOCK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (void**) ; 
 scalar_t__ FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct tty*,struct uio*) ; 

__attribute__((used)) static int
FUNC6(struct cdev *dev, struct uio *uio, int flag)
{
	int error, oresid = uio->uio_resid;
	struct snp_softc *ss;
	struct tty *tp;

	if (uio->uio_resid == 0)
		return (0);

	error = FUNC1((void **)&ss);
	if (error != 0)
		return (error);

	tp = ss->snp_tty;
	if (tp == NULL || FUNC2(tp))
		return (EIO);

	FUNC3(tp);
	for (;;) {
		error = FUNC5(&ss->snp_outq, tp, uio);
		if (error != 0 || uio->uio_resid != oresid)
			break;

		/* Wait for more data. */
		if (flag & O_NONBLOCK) {
			error = EWOULDBLOCK;
			break;
		}
		error = FUNC0(&ss->snp_outwait, tp->t_mtx);
		if (error != 0)
			break;
		if (FUNC2(tp)) {
			error = EIO;
			break;
		}
	}
	FUNC4(tp);

	return (error);
}