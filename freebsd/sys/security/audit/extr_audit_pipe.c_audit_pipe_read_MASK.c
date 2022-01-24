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
typedef  int /*<<< orphan*/  u_int ;
struct uio {scalar_t__ uio_resid; } ;
struct cdev {int dummy; } ;
struct audit_pipe_entry {scalar_t__ ape_record_len; scalar_t__ ape_record; } ;
struct audit_pipe {int ap_flags; scalar_t__ ap_qoffset; int /*<<< orphan*/  ap_qlen; int /*<<< orphan*/  ap_qbyteslen; int /*<<< orphan*/  ap_queue; int /*<<< orphan*/  ap_reads; int /*<<< orphan*/  ap_cv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_pipe*) ; 
 int AUDIT_PIPE_NBIO ; 
 scalar_t__ FUNC3 (struct audit_pipe*) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_pipe*) ; 
 int /*<<< orphan*/  FUNC5 (struct audit_pipe*) ; 
 int EAGAIN ; 
 int EINTR ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 struct audit_pipe_entry* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct audit_pipe_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ape_queue ; 
 int /*<<< orphan*/  FUNC11 (struct audit_pipe_entry*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC13 (void**) ; 
 int FUNC14 (char*,int /*<<< orphan*/ ,struct uio*) ; 

__attribute__((used)) static int
FUNC15(struct cdev *dev, struct uio *uio, int flag)
{
	struct audit_pipe_entry *ape;
	struct audit_pipe *ap;
	u_int toread;
	int error;

	error = FUNC13((void **)&ap);
	if (error != 0)
		return (error);

	/*
	 * We hold an sx(9) lock over read and flush because we rely on the
	 * stability of a record in the queue during uiomove(9).
	 */
	if (FUNC3(ap) != 0)
		return (EINTR);
	FUNC0(ap);
	while (FUNC8(&ap->ap_queue)) {
		if (ap->ap_flags & AUDIT_PIPE_NBIO) {
			FUNC5(ap);
			FUNC4(ap);
			return (EAGAIN);
		}
		error = FUNC12(&ap->ap_cv, FUNC2(ap));
		if (error) {
			FUNC5(ap);
			FUNC4(ap);
			return (error);
		}
	}

	/*
	 * Copy as many remaining bytes from the current record to userspace
	 * as we can.  Keep processing records until we run out of records in
	 * the queue, or until the user buffer runs out of space.
	 *
	 * Note: we rely on the SX lock to maintain ape's stability here.
	 */
	ap->ap_reads++;
	while ((ape = FUNC9(&ap->ap_queue)) != NULL &&
	    uio->uio_resid > 0) {
		FUNC1(ap);

		FUNC6(ape->ape_record_len > ap->ap_qoffset,
		    ("audit_pipe_read: record_len > qoffset (1)"));
		toread = FUNC7(ape->ape_record_len - ap->ap_qoffset,
		    uio->uio_resid);
		FUNC5(ap);
		error = FUNC14((char *)ape->ape_record + ap->ap_qoffset,
		    toread, uio);
		if (error) {
			FUNC4(ap);
			return (error);
		}

		/*
		 * If the copy succeeded, update book-keeping, and if no
		 * bytes remain in the current record, free it.
		 */
		FUNC0(ap);
		FUNC6(FUNC9(&ap->ap_queue) == ape,
		    ("audit_pipe_read: queue out of sync after uiomove"));
		ap->ap_qoffset += toread;
		FUNC6(ape->ape_record_len >= ap->ap_qoffset,
		    ("audit_pipe_read: record_len >= qoffset (2)"));
		if (ap->ap_qoffset == ape->ape_record_len) {
			FUNC10(&ap->ap_queue, ape, ape_queue);
			ap->ap_qbyteslen -= ape->ape_record_len;
			FUNC11(ape);
			ap->ap_qlen--;
			ap->ap_qoffset = 0;
		}
	}
	FUNC5(ap);
	FUNC4(ap);
	return (0);
}