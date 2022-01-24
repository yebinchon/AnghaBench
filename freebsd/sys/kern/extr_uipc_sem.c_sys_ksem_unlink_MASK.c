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
struct ksem_unlink_args {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__* cr_prison; } ;
struct TYPE_3__ {char* pr_path; } ;
typedef  int /*<<< orphan*/  Fnv32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FNV1_32_INIT ; 
 scalar_t__ MAXPATHLEN ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ksem_dict_lock ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 char* FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 size_t FUNC7 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(struct thread *td, struct ksem_unlink_args *uap)
{
	char *path;
	const char *pr_path;
	size_t pr_pathlen;
	Fnv32_t fnv;
	int error;

	path = FUNC5(MAXPATHLEN, M_TEMP, M_WAITOK);
	pr_path = td->td_ucred->cr_prison->pr_path;
	pr_pathlen = FUNC6(pr_path, "/") == 0 ? 0
	    : FUNC7(path, pr_path, MAXPATHLEN);
	error = FUNC1(uap->name, path + pr_pathlen, MAXPATHLEN - pr_pathlen,
	    NULL);
	if (error) {
		FUNC3(path, M_TEMP);
		return (error);
	}

	FUNC0(path);
	fnv = FUNC2(path, FNV1_32_INIT);
	FUNC8(&ksem_dict_lock);
	error = FUNC4(path, fnv, td->td_ucred);
	FUNC9(&ksem_dict_lock);
	FUNC3(path, M_TEMP);

	return (error);
}