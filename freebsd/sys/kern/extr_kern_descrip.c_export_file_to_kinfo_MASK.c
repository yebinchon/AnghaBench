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
typedef  int /*<<< orphan*/  uint64_t ;
struct kinfo_file {int kf_fd; int /*<<< orphan*/  kf_structsize; int /*<<< orphan*/  kf_status; int /*<<< orphan*/  kf_offset; int /*<<< orphan*/  kf_ref_count; int /*<<< orphan*/  kf_cap_rights; int /*<<< orphan*/  kf_flags; int /*<<< orphan*/  kf_type; } ;
struct filedesc {int dummy; } ;
struct file {int /*<<< orphan*/  f_count; int /*<<< orphan*/  f_flag; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int KERN_FILEDESC_PACK_KINFO ; 
 int /*<<< orphan*/  KF_ATTR_VALID ; 
 int /*<<< orphan*/  KF_TYPE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct kinfo_file*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct file*,struct kinfo_file*,struct filedesc*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct kinfo_file*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct file *fp, int fd, cap_rights_t *rightsp,
    struct kinfo_file *kif, struct filedesc *fdp, int flags)
{
	int error;

	FUNC0(kif, sizeof(*kif));

	/* Set a default type to allow for empty fill_kinfo() methods. */
	kif->kf_type = KF_TYPE_UNKNOWN;
	kif->kf_flags = FUNC6(fp->f_flag);
	if (rightsp != NULL)
		kif->kf_cap_rights = *rightsp;
	else
		FUNC1(&kif->kf_cap_rights);
	kif->kf_fd = fd;
	kif->kf_ref_count = fp->f_count;
	kif->kf_offset = FUNC3(fp);

	/*
	 * This may drop the filedesc lock, so the 'fp' cannot be
	 * accessed after this call.
	 */
	error = FUNC2(fp, kif, fdp);
	if (error == 0)
		kif->kf_status |= KF_ATTR_VALID;
	if ((flags & KERN_FILEDESC_PACK_KINFO) != 0)
		FUNC4(kif);
	else
		kif->kf_structsize = FUNC5(sizeof(*kif), sizeof(uint64_t));
}