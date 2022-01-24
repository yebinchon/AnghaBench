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
struct uio {scalar_t__ uio_offset; int /*<<< orphan*/  uio_resid; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 long FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  midistat_isopen ; 
 int /*<<< orphan*/  midistat_lock ; 
 int /*<<< orphan*/  midistat_sbuf ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (scalar_t__,long,struct uio*) ; 

__attribute__((used)) static int
FUNC8(struct cdev *i_dev, struct uio *uio, int flag)
{
	long l;
	int err;

	FUNC0(4, FUNC2("midistat_read\n"));
	FUNC5(&midistat_lock);
	if (!midistat_isopen) {
		FUNC6(&midistat_lock);
		return EBADF;
	}
	if (uio->uio_offset < 0 || uio->uio_offset > FUNC4(&midistat_sbuf)) {
		FUNC6(&midistat_lock);
		return EINVAL;
	}
	err = 0;
	l = FUNC1(uio->uio_resid, FUNC4(&midistat_sbuf) - uio->uio_offset);
	if (l > 0) {
		err = FUNC7(FUNC3(&midistat_sbuf) + uio->uio_offset, l,
		    uio);
	}
	FUNC6(&midistat_lock);
	return err;
}