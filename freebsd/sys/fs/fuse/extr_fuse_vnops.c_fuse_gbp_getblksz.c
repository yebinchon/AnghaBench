
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
typedef int const off_t ;
typedef scalar_t__ daddr_t ;


 int KASSERT (int,char*) ;
 int fuse_iosize (struct vnode*) ;
 int fuse_vnode_size (struct vnode*,int const*,int *,int *) ;

__attribute__((used)) static int
fuse_gbp_getblksz(struct vnode *vp, daddr_t lbn)
{
 off_t filesize;
 int blksz, err;
 const int biosize = fuse_iosize(vp);

 err = fuse_vnode_size(vp, &filesize, ((void*)0), ((void*)0));
 KASSERT(err == 0, ("vfs_bio_getpages can't handle errors here"));
 if (err)
  return biosize;

 if ((off_t)lbn * biosize >= filesize) {
  blksz = 0;
 } else if ((off_t)(lbn + 1) * biosize > filesize) {
  blksz = filesize - (off_t)lbn *biosize;
 } else {
  blksz = biosize;
 }
 return (blksz);
}
