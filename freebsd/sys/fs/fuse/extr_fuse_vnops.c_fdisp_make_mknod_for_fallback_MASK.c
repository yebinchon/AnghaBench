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
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct fuse_mknod_in {scalar_t__ rdev; int /*<<< orphan*/  mode; } ;
struct fuse_dispatcher {struct fuse_mknod_in* indata; } ;
struct componentname {int cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;

/* Variables and functions */
 int FUSE_MKNOD ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_dispatcher*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_dispatcher*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 

__attribute__((used)) static void
FUNC4(
	struct fuse_dispatcher *fdip,
	struct componentname *cnp,
	struct vnode *dvp,
	uint64_t parentnid,
	struct thread *td,
	struct ucred *cred,
	mode_t mode,
	enum fuse_opcode *op)
{
	struct fuse_mknod_in *fmni;

	FUNC0(fdip, sizeof(*fmni) + cnp->cn_namelen + 1);
	*op = FUSE_MKNOD;
	FUNC1(fdip, *op, FUNC3(dvp), parentnid, td, cred);
	fmni = fdip->indata;
	fmni->mode = mode;
	fmni->rdev = 0;
	FUNC2((char *)fdip->indata + sizeof(*fmni), cnp->cn_nameptr,
	    cnp->cn_namelen);
	((char *)fdip->indata)[sizeof(*fmni) + cnp->cn_namelen] = '\0';
}