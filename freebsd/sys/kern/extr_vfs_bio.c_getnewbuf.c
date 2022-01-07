
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t bo_domain; } ;
struct vnode {int v_vflag; scalar_t__ v_type; TYPE_1__ v_bufobj; } ;
struct bufdomain {int dummy; } ;
struct buf {int b_flags; } ;


 int B_INVAL ;
 int GB_KVAALLOC ;
 int GB_UNMAPPED ;
 int KASSERT (int,char*) ;
 scalar_t__ VCHR ;
 int VV_MD ;
 int VV_SYSTEM ;
 struct bufdomain* bdomain ;
 int brelse (struct buf*) ;
 struct buf* buf_alloc (struct bufdomain*) ;
 scalar_t__ buf_recycle (struct bufdomain*,int) ;
 int bufspace_release (struct bufdomain*,int) ;
 scalar_t__ bufspace_reserve (struct bufdomain*,int,int) ;
 int bufspace_wait (struct bufdomain*,struct vnode*,int,int,int) ;
 int counter_u64_add (int ,int) ;
 scalar_t__ getnewbuf_kva (struct buf*,int,int) ;
 int getnewbufcalls ;
 int getnewbufrestarts ;
 int unmapped_buf_allowed ;

__attribute__((used)) static struct buf *
getnewbuf(struct vnode *vp, int slpflag, int slptimeo, int maxsize, int gbflags)
{
 struct bufdomain *bd;
 struct buf *bp;
 bool metadata, reserved;

 bp = ((void*)0);
 KASSERT((gbflags & (GB_UNMAPPED | GB_KVAALLOC)) != GB_KVAALLOC,
     ("GB_KVAALLOC only makes sense with GB_UNMAPPED"));
 if (!unmapped_buf_allowed)
  gbflags &= ~(GB_UNMAPPED | GB_KVAALLOC);

 if (vp == ((void*)0) || (vp->v_vflag & (VV_MD | VV_SYSTEM)) != 0 ||
     vp->v_type == VCHR)
  metadata = 1;
 else
  metadata = 0;
 if (vp == ((void*)0))
  bd = &bdomain[0];
 else
  bd = &bdomain[vp->v_bufobj.bo_domain];

 counter_u64_add(getnewbufcalls, 1);
 reserved = 0;
 do {
  if (reserved == 0 &&
      bufspace_reserve(bd, maxsize, metadata) != 0) {
   counter_u64_add(getnewbufrestarts, 1);
   continue;
  }
  reserved = 1;
  if ((bp = buf_alloc(bd)) == ((void*)0)) {
   counter_u64_add(getnewbufrestarts, 1);
   continue;
  }
  if (getnewbuf_kva(bp, gbflags, maxsize) == 0)
   return (bp);
  break;
 } while (buf_recycle(bd, 0) == 0);

 if (reserved)
  bufspace_release(bd, maxsize);
 if (bp != ((void*)0)) {
  bp->b_flags |= B_INVAL;
  brelse(bp);
 }
 bufspace_wait(bd, vp, gbflags, slpflag, slptimeo);

 return (((void*)0));
}
