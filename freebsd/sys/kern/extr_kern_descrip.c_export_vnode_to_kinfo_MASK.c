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
struct vnode {int dummy; } ;
struct kinfo_file {int kf_fd; int kf_ref_count; int kf_offset; int /*<<< orphan*/  kf_structsize; int /*<<< orphan*/  kf_cap_rights; int /*<<< orphan*/  kf_flags; int /*<<< orphan*/  kf_status; int /*<<< orphan*/  kf_type; } ;

/* Variables and functions */
 int KERN_FILEDESC_PACK_KINFO ; 
 int /*<<< orphan*/  KF_ATTR_VALID ; 
 int /*<<< orphan*/  KF_TYPE_VNODE ; 
 int /*<<< orphan*/  FUNC0 (struct kinfo_file*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kinfo_file*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (struct vnode*,struct kinfo_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(struct vnode *vp, int fd, int fflags,
    struct kinfo_file *kif, int flags)
{
	int error;

	FUNC0(kif, sizeof(*kif));

	kif->kf_type = KF_TYPE_VNODE;
	error = FUNC4(vp, kif);
	if (error == 0)
		kif->kf_status |= KF_ATTR_VALID;
	kif->kf_flags = FUNC6(fflags);
	FUNC1(&kif->kf_cap_rights);
	kif->kf_fd = fd;
	kif->kf_ref_count = -1;
	kif->kf_offset = -1;
	if ((flags & KERN_FILEDESC_PACK_KINFO) != 0)
		FUNC2(kif);
	else
		kif->kf_structsize = FUNC3(sizeof(*kif), sizeof(uint64_t));
	FUNC5(vp);
}