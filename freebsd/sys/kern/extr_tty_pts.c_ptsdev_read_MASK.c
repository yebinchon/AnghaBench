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
struct ucred {int dummy; } ;
struct tty {int /*<<< orphan*/  t_mtx; } ;
struct thread {int dummy; } ;
struct pts_softc {int pts_flags; char pts_pkt; int /*<<< orphan*/  pts_outwait; } ;
struct file {int f_flag; struct tty* f_data; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int O_NONBLOCK ; 
 int PTS_FINISHED ; 
 int PTS_PKT ; 
 char TIOCPKT_DATA ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 struct pts_softc* FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 scalar_t__ FUNC4 (struct tty*) ; 
 int FUNC5 (struct tty*,struct uio*) ; 
 int FUNC6 (char,struct uio*) ; 

__attribute__((used)) static int
FUNC7(struct file *fp, struct uio *uio, struct ucred *active_cred,
    int flags, struct thread *td)
{
	struct tty *tp = fp->f_data;
	struct pts_softc *psc = FUNC2(tp);
	int error = 0;
	char pkt;

	if (uio->uio_resid == 0)
		return (0);

	FUNC1(tp);

	for (;;) {
		/*
		 * Implement packet mode. When packet mode is turned on,
		 * the first byte contains a bitmask of events that
		 * occurred (start, stop, flush, window size, etc).
		 */
		if (psc->pts_flags & PTS_PKT && psc->pts_pkt) {
			pkt = psc->pts_pkt;
			psc->pts_pkt = 0;
			FUNC3(tp);

			error = FUNC6(pkt, uio);
			return (error);
		}

		/*
		 * Transmit regular data.
		 *
		 * XXX: We shouldn't use ttydisc_getc_poll()! Even
		 * though in this implementation, there is likely going
		 * to be data, we should just call ttydisc_getc_uio()
		 * and use its return value to sleep.
		 */
		if (FUNC4(tp)) {
			if (psc->pts_flags & PTS_PKT) {
				/*
				 * XXX: Small race. Fortunately PTY
				 * consumers aren't multithreaded.
				 */

				FUNC3(tp);
				error = FUNC6(TIOCPKT_DATA, uio);
				if (error)
					return (error);
				FUNC1(tp);
			}

			error = FUNC5(tp, uio);
			break;
		}

		/* Maybe the device isn't used anyway. */
		if (psc->pts_flags & PTS_FINISHED)
			break;

		/* Wait for more data. */
		if (fp->f_flag & O_NONBLOCK) {
			error = EWOULDBLOCK;
			break;
		}
		error = FUNC0(&psc->pts_outwait, tp->t_mtx);
		if (error != 0)
			break;
	}

	FUNC3(tp);

	return (error);
}