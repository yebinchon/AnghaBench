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
struct thread {struct seltd* td_sel; } ;
struct seltd {int st_flags; int /*<<< orphan*/  st_mtx; int /*<<< orphan*/  st_wait; } ;
typedef  int sbintime_t ;

/* Variables and functions */
 int /*<<< orphan*/  C_ABSOLUTE ; 
 int EWOULDBLOCK ; 
 int SELTD_PENDING ; 
 int SELTD_RESCAN ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct thread *td, sbintime_t sbt, sbintime_t precision)
{
	struct seltd *stp;
	int error;

	stp = td->td_sel;
	/*
	 * An event of interest may occur while we do not hold the seltd
	 * locked so check the pending flag before we sleep.
	 */
	FUNC2(&stp->st_mtx);
	/*
	 * Any further calls to selrecord will be a rescan.
	 */
	stp->st_flags |= SELTD_RESCAN;
	if (stp->st_flags & SELTD_PENDING) {
		FUNC3(&stp->st_mtx);
		return (0);
	}
	if (sbt == 0)
		error = EWOULDBLOCK;
	else if (sbt != -1)
		error = FUNC0(&stp->st_wait, &stp->st_mtx,
		    sbt, precision, C_ABSOLUTE);
	else
		error = FUNC1(&stp->st_wait, &stp->st_mtx);
	FUNC3(&stp->st_mtx);

	return (error);
}