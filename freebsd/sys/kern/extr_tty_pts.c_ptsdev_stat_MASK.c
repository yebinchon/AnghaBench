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
struct ucred {int dummy; } ;
struct tty {struct cdev* t_dev; } ;
struct thread {int dummy; } ;
struct stat {int st_mode; int /*<<< orphan*/  st_gid; int /*<<< orphan*/  st_uid; int /*<<< orphan*/  st_mtim; int /*<<< orphan*/  st_ctim; int /*<<< orphan*/  st_atim; int /*<<< orphan*/  st_rdev; int /*<<< orphan*/  st_ino; } ;
struct pts_softc {int /*<<< orphan*/ * pts_cdev; } ;
struct file {struct tty* f_data; } ;
struct cdev {int si_mode; int /*<<< orphan*/  si_gid; int /*<<< orphan*/  si_uid; int /*<<< orphan*/  si_mtime; int /*<<< orphan*/  si_ctime; int /*<<< orphan*/  si_atime; } ;

/* Variables and functions */
 int S_IFCHR ; 
 int /*<<< orphan*/  FUNC0 (struct stat*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pts_softc* FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 

__attribute__((used)) static int
FUNC4(struct file *fp, struct stat *sb, struct ucred *active_cred,
    struct thread *td)
{
	struct tty *tp = fp->f_data;
#ifdef PTS_EXTERNAL
	struct pts_softc *psc = tty_softc(tp);
#endif /* PTS_EXTERNAL */
	struct cdev *dev = tp->t_dev;

	/*
	 * According to POSIX, we must implement an fstat(). This also
	 * makes this implementation compatible with Linux binaries,
	 * because Linux calls fstat() on the pseudo-terminal master to
	 * obtain st_rdev.
	 *
	 * XXX: POSIX also mentions we must fill in st_dev, but how?
	 */

	FUNC0(sb, sizeof *sb);
#ifdef PTS_EXTERNAL
	if (psc->pts_cdev != NULL)
		sb->st_ino = sb->st_rdev = dev2udev(psc->pts_cdev);
	else
#endif /* PTS_EXTERNAL */
		sb->st_ino = sb->st_rdev = FUNC3(tp);

	sb->st_atim = dev->si_atime;
	sb->st_ctim = dev->si_ctime;
	sb->st_mtim = dev->si_mtime;
	sb->st_uid = dev->si_uid;
	sb->st_gid = dev->si_gid;
	sb->st_mode = dev->si_mode | S_IFCHR;

	return (0);
}