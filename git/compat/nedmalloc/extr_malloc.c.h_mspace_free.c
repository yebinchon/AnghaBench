
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_2__ ;
typedef struct TYPE_39__ TYPE_1__ ;


typedef int tchunkptr ;
typedef TYPE_1__* mstate ;
typedef int mspace ;
typedef TYPE_2__* mchunkptr ;
struct TYPE_40__ {size_t prev_foot; int head; } ;
struct TYPE_39__ {size_t footprint; size_t dvsize; size_t topsize; scalar_t__ release_checks; TYPE_2__* dv; TYPE_2__* top; } ;


 scalar_t__ CALL_MUNMAP (char*,size_t) ;
 int INUSE_BITS ;
 size_t IS_MMAPPED_BIT ;
 scalar_t__ MMAP_FOOT_PAD ;
 size_t PINUSE_BIT ;
 int POSTACTION (TYPE_1__*) ;
 int PREACTION (TYPE_1__*) ;
 scalar_t__ RTCHECK (int) ;
 int USAGE_ERROR_ACTION (TYPE_1__*,TYPE_2__*) ;
 int check_free_chunk (TYPE_1__*,TYPE_2__*) ;
 int check_inuse_chunk (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* chunk_minus_offset (TYPE_2__*,size_t) ;
 TYPE_2__* chunk_plus_offset (TYPE_2__*,size_t) ;
 size_t chunksize (TYPE_2__*) ;
 int cinuse (TYPE_2__*) ;
 TYPE_1__* get_mstate_for (TYPE_2__*) ;
 int insert_large_chunk (TYPE_1__*,int ,size_t) ;
 int insert_small_chunk (TYPE_1__*,TYPE_2__*,size_t) ;
 scalar_t__ is_small (size_t) ;
 TYPE_2__* mem2chunk (void*) ;
 int ok_address (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ ok_cinuse (TYPE_2__*) ;
 int ok_magic (TYPE_1__*) ;
 scalar_t__ ok_next (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ ok_pinuse (TYPE_2__*) ;
 int pinuse (TYPE_2__*) ;
 int release_unused_segments (TYPE_1__*) ;
 int set_free_with_pinuse (TYPE_2__*,size_t,TYPE_2__*) ;
 int set_size_and_pinuse_of_free_chunk (TYPE_2__*,size_t) ;
 scalar_t__ should_trim (TYPE_1__*,size_t) ;
 int sys_trim (TYPE_1__*,int ) ;
 int unlink_chunk (TYPE_1__*,TYPE_2__*,size_t) ;

void mspace_free(mspace msp, void* mem) {
  if (mem != 0) {
    mchunkptr p = mem2chunk(mem);



    mstate fm = (mstate)msp;

    if (!ok_magic(fm)) {
      USAGE_ERROR_ACTION(fm, p);
      return;
    }
    if (!PREACTION(fm)) {
      check_inuse_chunk(fm, p);
      if (RTCHECK(ok_address(fm, p) && ok_cinuse(p))) {
 size_t psize = chunksize(p);
 mchunkptr next = chunk_plus_offset(p, psize);
 if (!pinuse(p)) {
   size_t prevsize = p->prev_foot;
   if ((prevsize & IS_MMAPPED_BIT) != 0) {
     prevsize &= ~IS_MMAPPED_BIT;
     psize += prevsize + MMAP_FOOT_PAD;
     if (CALL_MUNMAP((char*)p - prevsize, psize) == 0)
       fm->footprint -= psize;
     goto postaction;
   }
   else {
     mchunkptr prev = chunk_minus_offset(p, prevsize);
     psize += prevsize;
     p = prev;
     if (RTCHECK(ok_address(fm, prev))) {
       if (p != fm->dv) {
  unlink_chunk(fm, p, prevsize);
       }
       else if ((next->head & INUSE_BITS) == INUSE_BITS) {
  fm->dvsize = psize;
  set_free_with_pinuse(p, psize, next);
  goto postaction;
       }
     }
     else
       goto erroraction;
   }
 }

 if (RTCHECK(ok_next(p, next) && ok_pinuse(next))) {
   if (!cinuse(next)) {
     if (next == fm->top) {
       size_t tsize = fm->topsize += psize;
       fm->top = p;
       p->head = tsize | PINUSE_BIT;
       if (p == fm->dv) {
  fm->dv = 0;
  fm->dvsize = 0;
       }
       if (should_trim(fm, tsize))
  sys_trim(fm, 0);
       goto postaction;
     }
     else if (next == fm->dv) {
       size_t dsize = fm->dvsize += psize;
       fm->dv = p;
       set_size_and_pinuse_of_free_chunk(p, dsize);
       goto postaction;
     }
     else {
       size_t nsize = chunksize(next);
       psize += nsize;
       unlink_chunk(fm, next, nsize);
       set_size_and_pinuse_of_free_chunk(p, psize);
       if (p == fm->dv) {
  fm->dvsize = psize;
  goto postaction;
       }
     }
   }
   else
     set_free_with_pinuse(p, psize, next);

   if (is_small(psize)) {
     insert_small_chunk(fm, p, psize);
     check_free_chunk(fm, p);
   }
   else {
     tchunkptr tp = (tchunkptr)p;
     insert_large_chunk(fm, tp, psize);
     check_free_chunk(fm, p);
     if (--fm->release_checks == 0)
       release_unused_segments(fm);
   }
   goto postaction;
 }
      }
    erroraction:
      USAGE_ERROR_ACTION(fm, p);
    postaction:
      POSTACTION(fm);
    }
  }
}
