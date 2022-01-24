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
 int EBADF ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ midistat_isopen ; 
 int /*<<< orphan*/  midistat_lock ; 
 int /*<<< orphan*/  midistat_sbuf ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct cdev *i_dev, int flags, int mode, struct thread *td)
{
	FUNC0(1, FUNC1("midistat_close\n"));
	FUNC3(&midistat_lock);
	if (!midistat_isopen) {
		FUNC4(&midistat_lock);
		return EBADF;
	}
	FUNC2(&midistat_sbuf);
	midistat_isopen = 0;
	FUNC4(&midistat_lock);
	return 0;
}