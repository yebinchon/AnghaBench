
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef TYPE_1__* tchunkptr ;
typedef TYPE_2__* mstate ;
typedef int mchunkptr ;
typedef scalar_t__ binmap_t ;
typedef int bindex_t ;
struct TYPE_23__ {scalar_t__ treemap; size_t dvsize; } ;
struct TYPE_22__ {struct TYPE_22__** child; } ;


 int CORRUPTION_ERROR_ACTION (TYPE_2__*) ;
 size_t MIN_CHUNK_SIZE ;
 scalar_t__ RTCHECK (int ) ;
 size_t SIZE_T_BITSIZE ;
 size_t SIZE_T_ONE ;
 int assert (int) ;
 void* chunk2mem (TYPE_1__*) ;
 int chunk_plus_offset (TYPE_1__*,size_t) ;
 size_t chunksize (TYPE_1__*) ;
 int compute_bit2idx (scalar_t__,int ) ;
 int compute_tree_index (size_t,int ) ;
 int idx2bit (int ) ;
 int insert_chunk (TYPE_2__*,int ,size_t) ;
 scalar_t__ least_bit (scalar_t__) ;
 scalar_t__ left_bits (int ) ;
 TYPE_1__* leftmost_child (TYPE_1__*) ;
 size_t leftshift_for_tree_index (int ) ;
 int ok_address (TYPE_2__*,TYPE_1__*) ;
 int ok_next (TYPE_1__*,int ) ;
 int set_inuse_and_pinuse (TYPE_2__*,TYPE_1__*,size_t) ;
 int set_size_and_pinuse_of_free_chunk (int ,size_t) ;
 int set_size_and_pinuse_of_inuse_chunk (TYPE_2__*,TYPE_1__*,size_t) ;
 TYPE_1__** treebin_at (TYPE_2__*,int ) ;
 int unlink_large_chunk (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void* tmalloc_large(mstate m, size_t nb) {
  tchunkptr v = 0;
  size_t rsize = -nb;
  tchunkptr t;
  bindex_t idx;
  compute_tree_index(nb, idx);
  if ((t = *treebin_at(m, idx)) != 0) {

    size_t sizebits = nb << leftshift_for_tree_index(idx);
    tchunkptr rst = 0;
    for (;;) {
      tchunkptr rt;
      size_t trem = chunksize(t) - nb;
      if (trem < rsize) {
 v = t;
 if ((rsize = trem) == 0)
   break;
      }
      rt = t->child[1];
      t = t->child[(sizebits >> (SIZE_T_BITSIZE-SIZE_T_ONE)) & 1];
      if (rt != 0 && rt != t)
 rst = rt;
      if (t == 0) {
 t = rst;
 break;
      }
      sizebits <<= 1;
    }
  }
  if (t == 0 && v == 0) {
    binmap_t leftbits = left_bits(idx2bit(idx)) & m->treemap;
    if (leftbits != 0) {
      bindex_t i;
      binmap_t leastbit = least_bit(leftbits);
      compute_bit2idx(leastbit, i);
      t = *treebin_at(m, i);
    }
  }

  while (t != 0) {
    size_t trem = chunksize(t) - nb;
    if (trem < rsize) {
      rsize = trem;
      v = t;
    }
    t = leftmost_child(t);
  }


  if (v != 0 && rsize < (size_t)(m->dvsize - nb)) {
    if (RTCHECK(ok_address(m, v))) {
      mchunkptr r = chunk_plus_offset(v, nb);
      assert(chunksize(v) == rsize + nb);
      if (RTCHECK(ok_next(v, r))) {
 unlink_large_chunk(m, v);
 if (rsize < MIN_CHUNK_SIZE)
   set_inuse_and_pinuse(m, v, (rsize + nb));
 else {
   set_size_and_pinuse_of_inuse_chunk(m, v, nb);
   set_size_and_pinuse_of_free_chunk(r, rsize);
   insert_chunk(m, r, rsize);
 }
 return chunk2mem(v);
      }
    }
    CORRUPTION_ERROR_ACTION(m);
  }
  return 0;
}
