
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vop_getattr_args {struct vattr* a_vap; struct vnode* a_vp; } ;
struct vnode {TYPE_3__* v_mount; int v_type; } ;
struct vattr {int va_nlink; scalar_t__ va_filerev; scalar_t__ va_bytes; int va_rdev; scalar_t__ va_flags; scalar_t__ va_gen; int va_birthtime; int va_ctime; int va_mtime; int va_atime; scalar_t__ va_size; int va_blocksize; int va_fileid; int va_fsid; int va_gid; int va_uid; int va_mode; int va_type; } ;
struct mqfs_node {int mn_birth; int mn_ctime; int mn_mtime; int mn_atime; int mn_fileno; int mn_gid; int mn_uid; int mn_mode; } ;
struct TYPE_4__ {int * val; } ;
struct TYPE_5__ {TYPE_1__ f_fsid; } ;
struct TYPE_6__ {TYPE_2__ mnt_stat; } ;


 int NODEV ;
 int PAGE_SIZE ;
 struct mqfs_node* VTON (struct vnode*) ;

__attribute__((used)) static int
mqfs_getattr(struct vop_getattr_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct mqfs_node *pn = VTON(vp);
 struct vattr *vap = ap->a_vap;
 int error = 0;

 vap->va_type = vp->v_type;
 vap->va_mode = pn->mn_mode;
 vap->va_nlink = 1;
 vap->va_uid = pn->mn_uid;
 vap->va_gid = pn->mn_gid;
 vap->va_fsid = vp->v_mount->mnt_stat.f_fsid.val[0];
 vap->va_fileid = pn->mn_fileno;
 vap->va_size = 0;
 vap->va_blocksize = PAGE_SIZE;
 vap->va_bytes = vap->va_size = 0;
 vap->va_atime = pn->mn_atime;
 vap->va_mtime = pn->mn_mtime;
 vap->va_ctime = pn->mn_ctime;
 vap->va_birthtime = pn->mn_birth;
 vap->va_gen = 0;
 vap->va_flags = 0;
 vap->va_rdev = NODEV;
 vap->va_bytes = 0;
 vap->va_filerev = 0;
 return (error);
}
