
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct fuse_mknod_in {scalar_t__ rdev; int mode; } ;
struct fuse_dispatcher {struct fuse_mknod_in* indata; } ;
struct componentname {int cn_namelen; int cn_nameptr; } ;
typedef int mode_t ;
typedef enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;


 int FUSE_MKNOD ;
 int fdisp_init (struct fuse_dispatcher*,int) ;
 int fdisp_make (struct fuse_dispatcher*,int,int ,int ,struct thread*,struct ucred*) ;
 int memcpy (char*,int ,int) ;
 int vnode_mount (struct vnode*) ;

__attribute__((used)) static void
fdisp_make_mknod_for_fallback(
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

 fdisp_init(fdip, sizeof(*fmni) + cnp->cn_namelen + 1);
 *op = FUSE_MKNOD;
 fdisp_make(fdip, *op, vnode_mount(dvp), parentnid, td, cred);
 fmni = fdip->indata;
 fmni->mode = mode;
 fmni->rdev = 0;
 memcpy((char *)fdip->indata + sizeof(*fmni), cnp->cn_nameptr,
     cnp->cn_namelen);
 ((char *)fdip->indata)[sizeof(*fmni) + cnp->cn_namelen] = '\0';
}
