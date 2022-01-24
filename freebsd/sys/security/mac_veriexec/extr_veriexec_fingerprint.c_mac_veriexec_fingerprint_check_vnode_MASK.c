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
typedef  int /*<<< orphan*/  uintmax_t ;
struct vnode {TYPE_2__* v_mount; scalar_t__ v_writecount; } ;
struct thread {int dummy; } ;
struct mac_veriexec_file_info {int /*<<< orphan*/  gen; scalar_t__ fileid; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_4__ {int mnt_flag; TYPE_1__* mnt_vfc; } ;
struct TYPE_3__ {int /*<<< orphan*/  vfc_name; } ;

/* Variables and functions */
 int EAUTH ; 
 int ETXTBSY ; 
 int MNT_VERIFIED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct vnode*,struct mac_veriexec_file_info*,struct thread*,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC2 (struct mac_veriexec_file_info*,unsigned char*) ; 

int
FUNC3(struct vnode *vp,
    struct mac_veriexec_file_info *ip, struct thread *td, off_t file_size,
    unsigned char *fingerprint)
{
	int error;

	/* reject fingerprint if writers are active */
	if (vp->v_writecount)
		return (ETXTBSY);

	if ((vp->v_mount->mnt_flag & MNT_VERIFIED) != 0) {
		FUNC0(2, ("file %ju.%lu on verified %s mount\n",
		    (uintmax_t)ip->fileid, ip->gen,
		    vp->v_mount->mnt_vfc->vfc_name));

		/*
		 * The VFS is backed by a file which has been verified.
		 * No need to waste time here.
		 */
		return (0);
	}

	error = FUNC1(vp, ip, td, file_size, fingerprint);
	if (error)
		return (error);

	if (FUNC2(ip, fingerprint) != 0)
		return (EAUTH);

	return (0);
}