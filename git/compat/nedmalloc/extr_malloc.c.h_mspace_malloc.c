
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


typedef TYPE_1__* mstate ;
typedef int mspace ;
typedef TYPE_2__* mchunkptr ;
typedef int binmap_t ;
typedef int bindex_t ;
struct TYPE_30__ {size_t head; struct TYPE_30__* fd; } ;
struct TYPE_29__ {int smallmap; size_t dvsize; scalar_t__ treemap; size_t topsize; TYPE_2__* top; TYPE_2__* dv; } ;


 size_t MAX_REQUEST ;
 size_t MAX_SIZE_T ;
 size_t MAX_SMALL_REQUEST ;
 size_t MIN_CHUNK_SIZE ;
 size_t MIN_REQUEST ;
 size_t PINUSE_BIT ;
 int POSTACTION (TYPE_1__*) ;
 int PREACTION (TYPE_1__*) ;
 int SIZE_T_SIZE ;
 int USAGE_ERROR_ACTION (TYPE_1__*,TYPE_1__*) ;
 int assert (int) ;
 int check_malloced_chunk (TYPE_1__*,void*,size_t) ;
 int check_top_chunk (TYPE_1__*,TYPE_2__*) ;
 void* chunk2mem (TYPE_2__*) ;
 void* chunk_plus_offset (TYPE_2__*,size_t) ;
 size_t chunksize (TYPE_2__*) ;
 int compute_bit2idx (int,int) ;
 int idx2bit (int) ;
 int least_bit (int) ;
 int left_bits (int ) ;
 int ok_magic (TYPE_1__*) ;
 size_t pad_request (size_t) ;
 int replace_dv (TYPE_1__*,TYPE_2__*,size_t) ;
 int set_inuse_and_pinuse (TYPE_1__*,TYPE_2__*,size_t) ;
 int set_size_and_pinuse_of_free_chunk (TYPE_2__*,size_t) ;
 int set_size_and_pinuse_of_inuse_chunk (TYPE_1__*,TYPE_2__*,size_t) ;
 int small_index (size_t) ;
 size_t small_index2size (int) ;
 TYPE_2__* smallbin_at (TYPE_1__*,int) ;
 void* sys_alloc (TYPE_1__*,size_t) ;
 void* tmalloc_large (TYPE_1__*,size_t) ;
 void* tmalloc_small (TYPE_1__*,size_t) ;
 int unlink_first_small_chunk (TYPE_1__*,TYPE_2__*,TYPE_2__*,int) ;

void* mspace_malloc(mspace msp, size_t bytes) {
  mstate ms = (mstate)msp;
  if (!ok_magic(ms)) {
    USAGE_ERROR_ACTION(ms,ms);
    return 0;
  }
  if (!PREACTION(ms)) {
    void* mem;
    size_t nb;
    if (bytes <= MAX_SMALL_REQUEST) {
      bindex_t idx;
      binmap_t smallbits;
      nb = (bytes < MIN_REQUEST)? MIN_CHUNK_SIZE : pad_request(bytes);
      idx = small_index(nb);
      smallbits = ms->smallmap >> idx;

      if ((smallbits & 0x3U) != 0) {
 mchunkptr b, p;
 idx += ~smallbits & 1;
 b = smallbin_at(ms, idx);
 p = b->fd;
 assert(chunksize(p) == small_index2size(idx));
 unlink_first_small_chunk(ms, b, p, idx);
 set_inuse_and_pinuse(ms, p, small_index2size(idx));
 mem = chunk2mem(p);
 check_malloced_chunk(ms, mem, nb);
 goto postaction;
      }

      else if (nb > ms->dvsize) {
 if (smallbits != 0) {
   mchunkptr b, p, r;
   size_t rsize;
   bindex_t i;
   binmap_t leftbits = (smallbits << idx) & left_bits(idx2bit(idx));
   binmap_t leastbit = least_bit(leftbits);
   compute_bit2idx(leastbit, i);
   b = smallbin_at(ms, i);
   p = b->fd;
   assert(chunksize(p) == small_index2size(i));
   unlink_first_small_chunk(ms, b, p, i);
   rsize = small_index2size(i) - nb;

   if (SIZE_T_SIZE != 4 && rsize < MIN_CHUNK_SIZE)
     set_inuse_and_pinuse(ms, p, small_index2size(i));
   else {
     set_size_and_pinuse_of_inuse_chunk(ms, p, nb);
     r = chunk_plus_offset(p, nb);
     set_size_and_pinuse_of_free_chunk(r, rsize);
     replace_dv(ms, r, rsize);
   }
   mem = chunk2mem(p);
   check_malloced_chunk(ms, mem, nb);
   goto postaction;
 }

 else if (ms->treemap != 0 && (mem = tmalloc_small(ms, nb)) != 0) {
   check_malloced_chunk(ms, mem, nb);
   goto postaction;
 }
      }
    }
    else if (bytes >= MAX_REQUEST)
      nb = MAX_SIZE_T;
    else {
      nb = pad_request(bytes);
      if (ms->treemap != 0 && (mem = tmalloc_large(ms, nb)) != 0) {
 check_malloced_chunk(ms, mem, nb);
 goto postaction;
      }
    }

    if (nb <= ms->dvsize) {
      size_t rsize = ms->dvsize - nb;
      mchunkptr p = ms->dv;
      if (rsize >= MIN_CHUNK_SIZE) {
 mchunkptr r = ms->dv = chunk_plus_offset(p, nb);
 ms->dvsize = rsize;
 set_size_and_pinuse_of_free_chunk(r, rsize);
 set_size_and_pinuse_of_inuse_chunk(ms, p, nb);
      }
      else {
 size_t dvs = ms->dvsize;
 ms->dvsize = 0;
 ms->dv = 0;
 set_inuse_and_pinuse(ms, p, dvs);
      }
      mem = chunk2mem(p);
      check_malloced_chunk(ms, mem, nb);
      goto postaction;
    }

    else if (nb < ms->topsize) {
      size_t rsize = ms->topsize -= nb;
      mchunkptr p = ms->top;
      mchunkptr r = ms->top = chunk_plus_offset(p, nb);
      r->head = rsize | PINUSE_BIT;
      set_size_and_pinuse_of_inuse_chunk(ms, p, nb);
      mem = chunk2mem(p);
      check_top_chunk(ms, ms->top);
      check_malloced_chunk(ms, mem, nb);
      goto postaction;
    }

    mem = sys_alloc(ms, nb);

  postaction:
    POSTACTION(ms);
    return mem;
  }

  return 0;
}
