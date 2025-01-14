
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct vnode {int dummy; } ;
struct TYPE_10__ {int tv_nsec; int tv_sec; } ;
struct TYPE_9__ {int tv_nsec; int tv_sec; } ;
struct TYPE_8__ {int tv_nsec; int tv_sec; } ;
struct vattr {scalar_t__ va_size; int va_mode; scalar_t__ va_blocksize; int va_bytes; scalar_t__ va_flags; int va_type; TYPE_5__ va_ctime; TYPE_4__ va_mtime; TYPE_3__ va_atime; int va_rdev; int va_gid; int va_uid; int va_nlink; int va_fileid; int va_fsid; } ;
struct TYPE_6__ {int * val; } ;
struct TYPE_7__ {TYPE_1__ f_fsid; } ;
struct mount {TYPE_2__ mnt_stat; } ;
struct fuse_vnode_data {struct vattr cached_attrs; int attr_cache_timeout; } ;
struct fuse_data {int dummy; } ;
struct fuse_attr {scalar_t__ size; int mode; scalar_t__ blksize; int blocks; int ctimensec; int ctime; int mtimensec; int mtime; int atimensec; int atime; int rdev; int gid; int uid; int nlink; int ino; } ;


 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int IFTOVT (int) ;
 scalar_t__ PAGE_SIZE ;
 int S_BLKSIZE ;
 int S_IFMT ;
 struct fuse_vnode_data* VTOFUD (struct vnode*) ;
 struct fuse_data* fuse_get_mpdata (struct mount*) ;
 scalar_t__ fuse_libabi_geq (struct fuse_data*,int,int) ;
 int fuse_validity_2_bintime (scalar_t__,scalar_t__,int *) ;
 int fuse_vnode_setsize (struct vnode*,scalar_t__) ;
 int memcpy (struct vattr*,struct vattr*,int) ;
 int vattr_null (struct vattr*) ;
 scalar_t__ vnode_isreg (struct vnode*) ;
 struct mount* vnode_mount (struct vnode*) ;

void
fuse_internal_cache_attrs(struct vnode *vp, struct fuse_attr *attr,
 uint64_t attr_valid, uint32_t attr_valid_nsec, struct vattr *vap)
{
 struct mount *mp;
 struct fuse_vnode_data *fvdat;
 struct fuse_data *data;
 struct vattr *vp_cache_at;

 mp = vnode_mount(vp);
 fvdat = VTOFUD(vp);
 data = fuse_get_mpdata(mp);

 ASSERT_VOP_ELOCKED(vp, "fuse_internal_cache_attrs");

 fuse_validity_2_bintime(attr_valid, attr_valid_nsec,
  &fvdat->attr_cache_timeout);


 if (vnode_isreg(vp) && attr->size != fvdat->cached_attrs.va_size) {
  (void)fuse_vnode_setsize(vp, attr->size);
  fvdat->cached_attrs.va_size = attr->size;
 }

 if (attr_valid > 0 || attr_valid_nsec > 0)
  vp_cache_at = &(fvdat->cached_attrs);
 else if (vap != ((void*)0))
  vp_cache_at = vap;
 else
  return;

 vattr_null(vp_cache_at);
 vp_cache_at->va_fsid = mp->mnt_stat.f_fsid.val[0];
 vp_cache_at->va_fileid = attr->ino;
 vp_cache_at->va_mode = attr->mode & ~S_IFMT;
 vp_cache_at->va_nlink = attr->nlink;
 vp_cache_at->va_uid = attr->uid;
 vp_cache_at->va_gid = attr->gid;
 vp_cache_at->va_rdev = attr->rdev;
 vp_cache_at->va_size = attr->size;

 vp_cache_at->va_atime.tv_sec = attr->atime;
 vp_cache_at->va_atime.tv_nsec = attr->atimensec;
 vp_cache_at->va_mtime.tv_sec = attr->mtime;
 vp_cache_at->va_mtime.tv_nsec = attr->mtimensec;
 vp_cache_at->va_ctime.tv_sec = attr->ctime;
 vp_cache_at->va_ctime.tv_nsec = attr->ctimensec;
 if (fuse_libabi_geq(data, 7, 9) && attr->blksize > 0)
  vp_cache_at->va_blocksize = attr->blksize;
 else
  vp_cache_at->va_blocksize = PAGE_SIZE;
 vp_cache_at->va_type = IFTOVT(attr->mode);
 vp_cache_at->va_bytes = attr->blocks * S_BLKSIZE;
 vp_cache_at->va_flags = 0;

 if (vap != vp_cache_at && vap != ((void*)0))
  memcpy(vap, vp_cache_at, sizeof(*vap));
}
