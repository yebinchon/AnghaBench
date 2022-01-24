#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_2__* td_ucred; } ;
struct shm_unlink_args {int /*<<< orphan*/  path; } ;
struct TYPE_4__ {TYPE_1__* cr_prison; } ;
struct TYPE_3__ {char* pr_path; } ;
typedef  int /*<<< orphan*/  Fnv32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FNV1_32_INIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_NAMEI ; 
 scalar_t__ MAXPATHLEN ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shm_dict_lock ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 size_t FUNC9 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int
FUNC12(struct thread *td, struct shm_unlink_args *uap)
{
	char *path;
	const char *pr_path;
	size_t pr_pathlen;
	Fnv32_t fnv;
	int error;

	path = FUNC6(MAXPATHLEN, M_TEMP, M_WAITOK);
	pr_path = td->td_ucred->cr_prison->pr_path;
	pr_pathlen = FUNC8(pr_path, "/") == 0 ? 0
	    : FUNC9(path, pr_path, MAXPATHLEN);
	error = FUNC2(uap->path, path + pr_pathlen, MAXPATHLEN - pr_pathlen,
	    NULL);
	if (error) {
		FUNC4(path, M_TEMP);
		return (error);
	}
#ifdef KTRACE
	if (KTRPOINT(curthread, KTR_NAMEI))
		ktrnamei(path);
#endif
	FUNC0(path);
	fnv = FUNC3(path, FNV1_32_INIT);
	FUNC10(&shm_dict_lock);
	error = FUNC7(path, fnv, td->td_ucred);
	FUNC11(&shm_dict_lock);
	FUNC4(path, M_TEMP);

	return (error);
}