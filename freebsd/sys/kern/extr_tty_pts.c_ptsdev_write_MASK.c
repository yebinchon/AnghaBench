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
struct pts_softc {int pts_flags; int /*<<< orphan*/  pts_inwait; } ;
struct file {int f_flag; struct tty* f_data; } ;

/* Variables and functions */
 int EIO ; 
 int EWOULDBLOCK ; 
 size_t FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int O_NONBLOCK ; 
 int PTS_FINISHED ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 struct pts_softc* FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*) ; 
 size_t FUNC7 (struct tty*,char*,size_t) ; 
 int FUNC8 (char*,size_t,struct uio*) ; 

__attribute__((used)) static int
FUNC9(struct file *fp, struct uio *uio, struct ucred *active_cred,
    int flags, struct thread *td)
{
	struct tty *tp = fp->f_data;
	struct pts_softc *psc = FUNC4(tp);
	char ib[256], *ibstart;
	size_t iblen, rintlen;
	int error = 0;

	if (uio->uio_resid == 0)
		return (0);

	for (;;) {
		ibstart = ib;
		iblen = FUNC0(uio->uio_resid, sizeof ib);
		error = FUNC8(ib, iblen, uio);

		FUNC3(tp);
		if (error != 0) {
			iblen = 0;
			goto done;
		}

		/*
		 * When possible, avoid the slow path. rint_bypass()
		 * copies all input to the input queue at once.
		 */
		FUNC1(iblen > 0);
		do {
			rintlen = FUNC7(tp, ibstart, iblen);
			ibstart += rintlen;
			iblen -= rintlen;
			if (iblen == 0) {
				/* All data written. */
				break;
			}

			/* Maybe the device isn't used anyway. */
			if (psc->pts_flags & PTS_FINISHED) {
				error = EIO;
				goto done;
			}

			/* Wait for more data. */
			if (fp->f_flag & O_NONBLOCK) {
				error = EWOULDBLOCK;
				goto done;
			}

			/* Wake up users on the slave side. */
			FUNC6(tp);
			error = FUNC2(&psc->pts_inwait, tp->t_mtx);
			if (error != 0)
				goto done;
		} while (iblen > 0);

		if (uio->uio_resid == 0)
			break;
		FUNC5(tp);
	}

done:	FUNC6(tp);
	FUNC5(tp);

	/*
	 * Don't account for the part of the buffer that we couldn't
	 * pass to the TTY.
	 */
	uio->uio_resid += iblen;
	return (error);
}