
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;


typedef TYPE_3__* vm_page_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef TYPE_4__* vm_object_t ;
typedef int (* vbg_get_lblkno_t ) (struct vnode*,scalar_t__) ;
typedef void* (* vbg_get_blksize_t ) (struct vnode*,int) ;
struct vnode {struct mount* v_mount; TYPE_4__* v_object; } ;
struct mount {int mnt_kern_flag; } ;
struct buf {int b_flags; int b_dep; } ;
typedef int daddr_t ;
struct TYPE_17__ {scalar_t__ vnp_size; } ;
struct TYPE_18__ {TYPE_1__ vnp; } ;
struct TYPE_20__ {TYPE_2__ un_pager; } ;
struct TYPE_19__ {int pindex; } ;
struct TYPE_16__ {int td_ucred; } ;


 int B_NOCACHE ;
 int B_RELBUF ;
 int GB_UNMAPPED ;
 scalar_t__ IDX_TO_OFF (int) ;
 int KASSERT (int,char*) ;
 scalar_t__ LIST_EMPTY (int *) ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int MNTK_UNMAPPED_BUFS ;
 int OFF_TO_IDX (scalar_t__) ;
 int PAGE_SIZE ;
 int TRUE ;
 int VM_ALLOC_NORMAL ;
 int VM_CNT_ADD (int ,int) ;
 int VM_CNT_INC (int ) ;
 int VM_OBJECT_WLOCK (TYPE_4__*) ;
 int VM_OBJECT_WUNLOCK (TYPE_4__*) ;
 int VM_PAGER_BAD ;
 int VM_PAGER_ERROR ;
 int VM_PAGER_OK ;
 int bqrelse (struct buf*) ;
 int bread_gb (struct vnode*,int,long,int ,int,struct buf**) ;
 int brelse (struct buf*) ;
 scalar_t__ buf_pager_relbuf ;
 TYPE_13__* curthread ;
 scalar_t__ rounddown2 (scalar_t__,int) ;
 scalar_t__ roundup2 (scalar_t__,int) ;
 int v_vnodein ;
 int v_vnodepgsin ;
 scalar_t__ vm_page_all_valid (TYPE_3__*) ;
 int vm_page_busy_downgrade (TYPE_3__*) ;
 TYPE_3__* vm_page_grab (TYPE_4__*,int,int ) ;
 int vm_page_none_valid (TYPE_3__*) ;
 int vm_page_sunbusy (TYPE_3__*) ;
 int vm_page_zero_invalid (TYPE_3__*,int ) ;

int
vfs_bio_getpages(struct vnode *vp, vm_page_t *ma, int count,
    int *rbehind, int *rahead, vbg_get_lblkno_t get_lblkno,
    vbg_get_blksize_t get_blksize)
{
 vm_page_t m;
 vm_object_t object;
 struct buf *bp;
 struct mount *mp;
 daddr_t lbn, lbnp;
 vm_ooffset_t la, lb, poff, poffe;
 long bsize;
 int bo_bs, br_flags, error, i, pgsin, pgsin_a, pgsin_b;
 bool redo, lpart;

 object = vp->v_object;
 mp = vp->v_mount;
 error = 0;
 la = IDX_TO_OFF(ma[count - 1]->pindex);
 if (la >= object->un_pager.vnp.vnp_size)
  return (VM_PAGER_BAD);






 la += PAGE_SIZE;
 lpart = la > object->un_pager.vnp.vnp_size;
 bo_bs = get_blksize(vp, get_lblkno(vp, IDX_TO_OFF(ma[0]->pindex)));




 pgsin = count;
 lb = IDX_TO_OFF(ma[0]->pindex);
 pgsin_b = OFF_TO_IDX(lb - rounddown2(lb, bo_bs));
 pgsin += pgsin_b;
 if (rbehind != ((void*)0))
  *rbehind = pgsin_b;
 pgsin_a = OFF_TO_IDX(roundup2(la, bo_bs) - la);
 if (la + IDX_TO_OFF(pgsin_a) >= object->un_pager.vnp.vnp_size)
  pgsin_a = OFF_TO_IDX(roundup2(object->un_pager.vnp.vnp_size,
      PAGE_SIZE) - la);
 pgsin += pgsin_a;
 if (rahead != ((void*)0))
  *rahead = pgsin_a;
 VM_CNT_INC(v_vnodein);
 VM_CNT_ADD(v_vnodepgsin, pgsin);

 br_flags = (mp != ((void*)0) && (mp->mnt_kern_flag & MNTK_UNMAPPED_BUFS)
     != 0) ? GB_UNMAPPED : 0;
again:
 for (i = 0; i < count; i++)
  vm_page_busy_downgrade(ma[i]);

 lbnp = -1;
 for (i = 0; i < count; i++) {
  m = ma[i];
  if (vm_page_all_valid(m))
   continue;

  poff = IDX_TO_OFF(m->pindex);
  poffe = MIN(poff + PAGE_SIZE, object->un_pager.vnp.vnp_size);
  for (; poff < poffe; poff += bsize) {
   lbn = get_lblkno(vp, poff);
   if (lbn == lbnp)
    goto next_page;
   lbnp = lbn;

   bsize = get_blksize(vp, lbn);
   error = bread_gb(vp, lbn, bsize, curthread->td_ucred,
       br_flags, &bp);
   if (error != 0)
    goto end_pages;
   if (LIST_EMPTY(&bp->b_dep)) {
    if (buf_pager_relbuf ||
        !vm_page_all_valid(m))
     bp->b_flags |= B_RELBUF;

    bp->b_flags &= ~B_NOCACHE;
    brelse(bp);
   } else {
    bqrelse(bp);
   }
  }
  KASSERT(1 ||
      vm_page_all_valid(m) || i == count - 1,
      ("buf %d %p invalid", i, m));
  if (i == count - 1 && lpart) {
   if (!vm_page_none_valid(m) &&
       !vm_page_all_valid(m))
    vm_page_zero_invalid(m, TRUE);
  }
next_page:;
 }
end_pages:

 VM_OBJECT_WLOCK(object);
 redo = 0;
 for (i = 0; i < count; i++) {
  vm_page_sunbusy(ma[i]);
  ma[i] = vm_page_grab(object, ma[i]->pindex, VM_ALLOC_NORMAL);
  if (!vm_page_all_valid(ma[i]))
   redo = 1;
 }
 VM_OBJECT_WUNLOCK(object);
 if (redo && error == 0)
  goto again;
 return (error != 0 ? VM_PAGER_ERROR : VM_PAGER_OK);
}
