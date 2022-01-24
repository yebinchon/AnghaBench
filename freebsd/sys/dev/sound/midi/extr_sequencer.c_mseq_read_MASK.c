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
typedef  int /*<<< orphan*/  u_char ;
struct uio {int uio_resid; } ;
struct seq_softc {int unit; int fflags; int /*<<< orphan*/  seq_lock; int /*<<< orphan*/  in_q; int /*<<< orphan*/  in_cv; } ;
struct cdev {struct seq_softc* si_drv1; } ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 int EWOULDBLOCK ; 
 int FREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int SEQ_RSIZE ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,struct uio*) ; 

int
FUNC10(struct cdev *i_dev, struct uio *uio, int ioflag)
{
	int retval, used;
	struct seq_softc *scp = i_dev->si_drv1;

#define SEQ_RSIZE 32
	u_char buf[SEQ_RSIZE];

	if (scp == NULL)
		return ENXIO;

	FUNC4(7, FUNC8("mseq_read: unit %d, resid %zd.\n",
	    scp->unit, uio->uio_resid));

	FUNC6(&scp->seq_lock);
	if ((scp->fflags & FREAD) == 0) {
		FUNC4(2, FUNC8("mseq_read: unit %d is not for reading.\n",
		    scp->unit));
		retval = EIO;
		goto err1;
	}
	/*
	 * Begin recording.
	 */
	/*
	 * if ((scp->flags & SEQ_F_READING) == 0)
	 */
	/*
	 * TODO, start recording if not alread
	 */

	/*
	 * I think the semantics are to return as soon
	 * as possible.
	 * Second thought, it doens't seem like midimoutain
	 * expects that at all.
	 * TODO: Look up in some sort of spec
	 */

	while (uio->uio_resid > 0) {
		while (FUNC1(scp->in_q)) {
			retval = EWOULDBLOCK;
			/*
			 * I wish I knew which one to care about
			 */

			if (scp->fflags & O_NONBLOCK)
				goto err1;
			if (ioflag & O_NONBLOCK)
				goto err1;

			retval = FUNC5(&scp->in_cv, &scp->seq_lock);
			if (retval != 0)
				goto err1;
		}

		used = FUNC3(FUNC2(scp->in_q), uio->uio_resid);
		used = FUNC3(used, SEQ_RSIZE);

		FUNC4(8, FUNC8("midiread: uiomove cc=%d\n", used));
		FUNC0(scp->in_q, buf, used);
		FUNC7(&scp->seq_lock);
		retval = FUNC9(buf, used, uio);
		FUNC6(&scp->seq_lock);
		if (retval)
			goto err1;
	}

	retval = 0;
err1:
	FUNC7(&scp->seq_lock);
	FUNC4(6, FUNC8("mseq_read: ret %d, resid %zd.\n",
	    retval, uio->uio_resid));

	return retval;
}