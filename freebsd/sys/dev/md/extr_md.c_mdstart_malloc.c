
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef uintptr_t u_char ;
struct md_s {uintptr_t sectorsize; int flags; int uma; int indir; } ;
struct bio {int bio_cmd; int bio_flags; uintptr_t* bio_data; int bio_ma_offset; uintptr_t bio_length; uintptr_t bio_offset; scalar_t__ bio_resid; int * bio_ma; } ;
typedef uintptr_t off_t ;
typedef int bus_dma_segment_t ;




 int BIO_UNMAPPED ;
 int BIO_VLIST ;

 int ENOSPC ;
 int EOPNOTSUPP ;
 int KASSERT (int ,char*) ;
 int MD_COMPRESS ;
 int MD_MALLOC_MOVE_CMP ;
 int MD_MALLOC_MOVE_FILL ;
 int MD_MALLOC_MOVE_READ ;
 int MD_MALLOC_MOVE_WRITE ;
 int MD_MALLOC_MOVE_ZERO ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int bcopy (uintptr_t*,void*,uintptr_t) ;
 int bzero (uintptr_t*,uintptr_t) ;
 int cpu_flush_dcache (uintptr_t*,uintptr_t) ;
 int md_malloc_move_ma (int **,int*,uintptr_t,void*,uintptr_t,int ) ;
 int md_malloc_move_vlist (int **,int*,uintptr_t,void*,uintptr_t,int ) ;
 scalar_t__ md_malloc_wait ;
 int memset (uintptr_t*,uintptr_t,uintptr_t) ;
 uintptr_t s_read (int ,uintptr_t) ;
 int s_write (int ,uintptr_t,uintptr_t) ;
 scalar_t__ uma_zalloc (int ,int ) ;
 int uma_zfree (int ,void*) ;

__attribute__((used)) static int
mdstart_malloc(struct md_s *sc, struct bio *bp)
{
 u_char *dst;
 vm_page_t *m;
 bus_dma_segment_t *vlist;
 int i, error, error1, ma_offs, notmapped;
 off_t secno, nsec, uc;
 uintptr_t sp, osp;

 switch (bp->bio_cmd) {
 case 129:
 case 128:
 case 130:
  break;
 default:
  return (EOPNOTSUPP);
 }

 notmapped = (bp->bio_flags & BIO_UNMAPPED) != 0;
 vlist = (bp->bio_flags & BIO_VLIST) != 0 ?
     (bus_dma_segment_t *)bp->bio_data : ((void*)0);
 if (notmapped) {
  m = bp->bio_ma;
  ma_offs = bp->bio_ma_offset;
  dst = ((void*)0);
  KASSERT(vlist == ((void*)0), ("vlists cannot be unmapped"));
 } else if (vlist != ((void*)0)) {
  ma_offs = bp->bio_ma_offset;
  dst = ((void*)0);
 } else {
  dst = bp->bio_data;
 }

 nsec = bp->bio_length / sc->sectorsize;
 secno = bp->bio_offset / sc->sectorsize;
 error = 0;
 while (nsec--) {
  osp = s_read(sc->indir, secno);
  if (bp->bio_cmd == 130) {
   if (osp != 0)
    error = s_write(sc->indir, secno, 0);
  } else if (bp->bio_cmd == 129) {
   if (osp == 0) {
    if (notmapped) {
     error = md_malloc_move_ma(&m, &ma_offs,
         sc->sectorsize, ((void*)0), 0,
         MD_MALLOC_MOVE_ZERO);
    } else if (vlist != ((void*)0)) {
     error = md_malloc_move_vlist(&vlist,
         &ma_offs, sc->sectorsize, ((void*)0), 0,
         MD_MALLOC_MOVE_ZERO);
    } else
     bzero(dst, sc->sectorsize);
   } else if (osp <= 255) {
    if (notmapped) {
     error = md_malloc_move_ma(&m, &ma_offs,
         sc->sectorsize, ((void*)0), osp,
         MD_MALLOC_MOVE_FILL);
    } else if (vlist != ((void*)0)) {
     error = md_malloc_move_vlist(&vlist,
         &ma_offs, sc->sectorsize, ((void*)0), osp,
         MD_MALLOC_MOVE_FILL);
    } else
     memset(dst, osp, sc->sectorsize);
   } else {
    if (notmapped) {
     error = md_malloc_move_ma(&m, &ma_offs,
         sc->sectorsize, (void *)osp, 0,
         MD_MALLOC_MOVE_READ);
    } else if (vlist != ((void*)0)) {
     error = md_malloc_move_vlist(&vlist,
         &ma_offs, sc->sectorsize,
         (void *)osp, 0,
         MD_MALLOC_MOVE_READ);
    } else {
     bcopy((void *)osp, dst, sc->sectorsize);
     cpu_flush_dcache(dst, sc->sectorsize);
    }
   }
   osp = 0;
  } else if (bp->bio_cmd == 128) {
   if (sc->flags & MD_COMPRESS) {
    if (notmapped) {
     error1 = md_malloc_move_ma(&m, &ma_offs,
         sc->sectorsize, &uc, 0,
         MD_MALLOC_MOVE_CMP);
     i = error1 == 0 ? sc->sectorsize : 0;
    } else if (vlist != ((void*)0)) {
     error1 = md_malloc_move_vlist(&vlist,
         &ma_offs, sc->sectorsize, &uc, 0,
         MD_MALLOC_MOVE_CMP);
     i = error1 == 0 ? sc->sectorsize : 0;
    } else {
     uc = dst[0];
     for (i = 1; i < sc->sectorsize; i++) {
      if (dst[i] != uc)
       break;
     }
    }
   } else {
    i = 0;
    uc = 0;
   }
   if (i == sc->sectorsize) {
    if (osp != uc)
     error = s_write(sc->indir, secno, uc);
   } else {
    if (osp <= 255) {
     sp = (uintptr_t)uma_zalloc(sc->uma,
         md_malloc_wait ? M_WAITOK :
         M_NOWAIT);
     if (sp == 0) {
      error = ENOSPC;
      break;
     }
     if (notmapped) {
      error = md_malloc_move_ma(&m,
          &ma_offs, sc->sectorsize,
          (void *)sp, 0,
          MD_MALLOC_MOVE_WRITE);
     } else if (vlist != ((void*)0)) {
      error = md_malloc_move_vlist(
          &vlist, &ma_offs,
          sc->sectorsize, (void *)sp,
          0, MD_MALLOC_MOVE_WRITE);
     } else {
      bcopy(dst, (void *)sp,
          sc->sectorsize);
     }
     error = s_write(sc->indir, secno, sp);
    } else {
     if (notmapped) {
      error = md_malloc_move_ma(&m,
          &ma_offs, sc->sectorsize,
          (void *)osp, 0,
          MD_MALLOC_MOVE_WRITE);
     } else if (vlist != ((void*)0)) {
      error = md_malloc_move_vlist(
          &vlist, &ma_offs,
          sc->sectorsize, (void *)osp,
          0, MD_MALLOC_MOVE_WRITE);
     } else {
      bcopy(dst, (void *)osp,
          sc->sectorsize);
     }
     osp = 0;
    }
   }
  } else {
   error = EOPNOTSUPP;
  }
  if (osp > 255)
   uma_zfree(sc->uma, (void*)osp);
  if (error != 0)
   break;
  secno++;
  if (!notmapped && vlist == ((void*)0))
   dst += sc->sectorsize;
 }
 bp->bio_resid = 0;
 return (error);
}
