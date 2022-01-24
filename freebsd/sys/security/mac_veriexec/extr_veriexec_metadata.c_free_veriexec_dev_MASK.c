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
struct veriexec_devhead {int dummy; } ;
struct veriexec_dev_list {scalar_t__ fsid; struct veriexec_dev_list* label; struct veriexec_devhead file_head; } ;
struct mac_veriexec_file_info {scalar_t__ fsid; struct mac_veriexec_file_info* label; struct veriexec_devhead file_head; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int ENOENT ; 
 struct veriexec_dev_list* FUNC0 (struct veriexec_devhead*) ; 
 struct veriexec_dev_list* FUNC1 (struct veriexec_dev_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct veriexec_dev_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_VERIEXEC ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC3 (struct veriexec_dev_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ve_mutex ; 

__attribute__((used)) static int
FUNC6(dev_t fsid, struct veriexec_devhead *head)
{
	struct veriexec_dev_list *lp;
	struct mac_veriexec_file_info *ip, *nip;

	/* Look for the file system */
	for (lp = FUNC0(head); lp != NULL;
	     lp = FUNC1(lp, entries))
		if (lp->fsid == fsid) break;

	/* If lp is NULL, we did not find it */
	if (lp == NULL)
		return ENOENT;

	/* Unhook lp, before we free it and its content */
	FUNC2(lp, entries);

	/* Release the lock */
	FUNC5(&ve_mutex);

	/* Free the file entries in the list */
	for (ip = FUNC0(&(lp->file_head)); ip != NULL; ip = nip) {
		nip = FUNC1(ip, entries);
		FUNC2(ip, entries);
		if (ip->label)
			FUNC3(ip->label, M_VERIEXEC);
		FUNC3(ip, M_VERIEXEC);
	}

	/* Free the meta-data entry for the device */
	FUNC3(lp, M_VERIEXEC);

	/* Re-acquire the lock */
	FUNC4(&ve_mutex);
	return 0;
}