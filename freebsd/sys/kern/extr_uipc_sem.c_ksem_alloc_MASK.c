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
struct ucred {int /*<<< orphan*/  cr_gid; int /*<<< orphan*/  cr_uid; } ;
struct ksem {unsigned int ks_value; int /*<<< orphan*/  ks_ref; int /*<<< orphan*/  ks_birthtime; int /*<<< orphan*/  ks_ctime; int /*<<< orphan*/  ks_mtime; int /*<<< orphan*/  ks_atime; int /*<<< orphan*/  ks_cv; int /*<<< orphan*/  ks_mode; int /*<<< orphan*/  ks_gid; int /*<<< orphan*/  ks_uid; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_P1003_1B_SEM_NSEMS_MAX ; 
 int /*<<< orphan*/  M_KSEM ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ksem_count_lock ; 
 scalar_t__ ksem_dead ; 
 int /*<<< orphan*/  FUNC1 (struct ucred*,struct ksem*) ; 
 int /*<<< orphan*/  FUNC2 (struct ksem*) ; 
 struct ksem* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ nsems ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ksem *
FUNC9(struct ucred *ucred, mode_t mode, unsigned int value)
{
	struct ksem *ks;

	FUNC4(&ksem_count_lock);
	if (nsems == FUNC6(CTL_P1003_1B_SEM_NSEMS_MAX) || ksem_dead) {
		FUNC5(&ksem_count_lock);
		return (NULL);
	}
	nsems++;
	FUNC5(&ksem_count_lock);
	ks = FUNC3(sizeof(*ks), M_KSEM, M_WAITOK | M_ZERO);
	ks->ks_uid = ucred->cr_uid;
	ks->ks_gid = ucred->cr_gid;
	ks->ks_mode = mode;
	ks->ks_value = value;
	FUNC0(&ks->ks_cv, "ksem");
	FUNC8(&ks->ks_birthtime);
	ks->ks_atime = ks->ks_mtime = ks->ks_ctime = ks->ks_birthtime;
	FUNC7(&ks->ks_ref, 1);
#ifdef MAC
	mac_posixsem_init(ks);
	mac_posixsem_create(ucred, ks);
#endif

	return (ks);
}