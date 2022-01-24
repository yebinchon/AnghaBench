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
struct unlink_args {int /*<<< orphan*/  path; } ;
struct thread {int dummy; } ;
struct filemon {int error; int /*<<< orphan*/  fname1; } ;
struct TYPE_3__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* curproc ; 
 int /*<<< orphan*/  FUNC1 (struct filemon*) ; 
 int /*<<< orphan*/  FUNC2 (struct filemon*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct filemon* FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct thread*,struct unlink_args*) ; 

__attribute__((used)) static int
FUNC5(struct thread *td, struct unlink_args *uap)
{
	int error, ret;
	struct filemon *filemon;

	if ((ret = FUNC4(td, uap)) == 0) {
		if ((filemon = FUNC3(curproc)) != NULL) {
			if ((error = FUNC0(uap->path, filemon->fname1,
			    sizeof(filemon->fname1), NULL)) != 0) {
				filemon->error = error;
				goto copyfail;
			}

			FUNC2(filemon, "D %d %s\n",
			    curproc->p_pid, filemon->fname1);
copyfail:
			FUNC1(filemon);
		}
	}

	return (ret);
}