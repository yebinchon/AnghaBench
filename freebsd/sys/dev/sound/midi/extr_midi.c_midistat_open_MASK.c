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
struct thread {int dummy; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SBUF_AUTOEXTEND ; 
 int midistat_isopen ; 
 int /*<<< orphan*/  midistat_lock ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  midistat_sbuf ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct cdev *i_dev, int flags, int mode, struct thread *td)
{
	int error;

	FUNC0(1, FUNC2("midistat_open\n"));

	FUNC4(&midistat_lock);
	if (midistat_isopen) {
		FUNC5(&midistat_lock);
		return EBUSY;
	}
	midistat_isopen = 1;
	if (FUNC3(&midistat_sbuf, NULL, 4096, SBUF_AUTOEXTEND) == NULL) {
		error = ENXIO;
		goto out;
	}
	error = (FUNC1(&midistat_sbuf) > 0) ? 0 : ENOMEM;
out:
	if (error)
		midistat_isopen = 0;
	FUNC5(&midistat_lock);
	return error;
}