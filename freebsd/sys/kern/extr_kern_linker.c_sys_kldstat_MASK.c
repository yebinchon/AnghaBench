#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  version ;
struct thread {int dummy; } ;
struct kldstat_args {TYPE_1__* stat; int /*<<< orphan*/  fileid; } ;
struct kld_file_stat_1 {int dummy; } ;
struct kld_file_stat {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC0 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC1 (struct kld_file_stat*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kld_file_stat*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,struct kld_file_stat*) ; 
 struct kld_file_stat* FUNC4 (int,int /*<<< orphan*/ ,int) ; 

int
FUNC5(struct thread *td, struct kldstat_args *uap)
{
	struct kld_file_stat *stat;
	int error, version;

	/*
	 * Check the version of the user's structure.
	 */
	if ((error = FUNC0(&uap->stat->version, &version, sizeof(version)))
	    != 0)
		return (error);
	if (version != sizeof(struct kld_file_stat_1) &&
	    version != sizeof(struct kld_file_stat))
		return (EINVAL);

	stat = FUNC4(sizeof(*stat), M_TEMP, M_WAITOK | M_ZERO);
	error = FUNC3(td, uap->fileid, stat);
	if (error == 0)
		error = FUNC1(stat, uap->stat, version);
	FUNC2(stat, M_TEMP);
	return (error);
}