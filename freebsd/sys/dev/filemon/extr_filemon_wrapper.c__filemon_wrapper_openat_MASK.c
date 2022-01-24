#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct filemon {char* fname1; int error; } ;
struct file {int /*<<< orphan*/  f_vnode; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;
struct TYPE_3__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int AT_FDCWD ; 
 int /*<<< orphan*/  CAP_LOOKUP ; 
 int /*<<< orphan*/  M_TEMP ; 
 int O_ACCMODE ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,char*,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* curproc ; 
 int /*<<< orphan*/  FUNC2 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct filemon*) ; 
 int /*<<< orphan*/  FUNC4 (struct filemon*,char*,char,char*,...) ; 
 struct filemon* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct thread*,int,int /*<<< orphan*/ ,struct file**) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*,int /*<<< orphan*/ ,char**,char**) ; 

__attribute__((used)) static void
FUNC9(struct thread *td, const char *upath, int flags,
    int fd)
{
	int error;
	struct file *fp;
	struct filemon *filemon;
	char *atpath, *freepath;
	cap_rights_t rights;

	if ((filemon = FUNC5(curproc)) != NULL) {
		atpath = "";
		freepath = NULL;
		fp = NULL;

		if ((error = FUNC1(upath, filemon->fname1,
		    sizeof(filemon->fname1), NULL)) != 0) {
			filemon->error = error;
			goto copyfail;
		}

		if (filemon->fname1[0] != '/' && fd != AT_FDCWD) {
			/*
			 * rats - we cannot do too much about this.
			 * the trace should show a dir we read
			 * recently.. output an A record as a clue
			 * until we can do better.
			 * XXX: This may be able to come out with
			 * the namecache lookup now.
			 */
			FUNC4(filemon, "A %d %s\n",
			    curproc->p_pid, filemon->fname1);
			/*
			 * Try to resolve the path from the vnode using the
			 * namecache.  It may be inaccurate, but better
			 * than nothing.
			 */
			if (FUNC7(td, fd,
			    FUNC0(&rights, CAP_LOOKUP), &fp) == 0) {
				FUNC8(td, fp->f_vnode, &atpath,
				    &freepath);
			}
		}
		if (flags & O_RDWR) {
			/*
			 * We'll get the W record below, but need
			 * to also output an R to distinguish from
			 * O_WRONLY.
			 */
			FUNC4(filemon, "R %d %s%s%s\n",
			    curproc->p_pid, atpath,
			    atpath[0] != '\0' ? "/" : "", filemon->fname1);
		}

		FUNC4(filemon, "%c %d %s%s%s\n",
		    (flags & O_ACCMODE) ? 'W':'R',
		    curproc->p_pid, atpath,
		    atpath[0] != '\0' ? "/" : "", filemon->fname1);
copyfail:
		FUNC3(filemon);
		if (fp != NULL)
			FUNC2(fp, td);
		FUNC6(freepath, M_TEMP);
	}
}