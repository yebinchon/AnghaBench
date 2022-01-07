
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_ooffset_t ;
struct vnode {int v_iflag; TYPE_2__* v_mount; } ;
typedef int daddr_t ;
struct TYPE_3__ {int f_iosize; } ;
struct TYPE_4__ {TYPE_1__ mnt_stat; } ;


 int DEV_BSIZE ;
 int PAGE_SIZE ;
 int VI_DOOMED ;
 int VOP_BMAP (struct vnode*,int,int *,int*,int*,int *) ;

__attribute__((used)) static int
vnode_pager_addr(struct vnode *vp, vm_ooffset_t address, daddr_t *rtaddress,
    int *run)
{
 int bsize;
 int err;
 daddr_t vblock;
 daddr_t voffset;

 if (address < 0)
  return -1;

 if (vp->v_iflag & VI_DOOMED)
  return -1;

 bsize = vp->v_mount->mnt_stat.f_iosize;
 vblock = address / bsize;
 voffset = address % bsize;

 err = VOP_BMAP(vp, vblock, ((void*)0), rtaddress, run, ((void*)0));
 if (err == 0) {
  if (*rtaddress != -1)
   *rtaddress += voffset / DEV_BSIZE;
  if (run) {
   *run += 1;
   *run *= bsize / PAGE_SIZE;
   *run -= voffset / PAGE_SIZE;
  }
 }

 return (err);
}
