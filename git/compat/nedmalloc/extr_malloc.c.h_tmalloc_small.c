
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int tchunkptr ;
typedef TYPE_1__* mstate ;
typedef int mchunkptr ;
typedef int binmap_t ;
typedef int bindex_t ;
struct TYPE_10__ {int treemap; } ;


 int CORRUPTION_ERROR_ACTION (TYPE_1__*) ;
 size_t MIN_CHUNK_SIZE ;
 scalar_t__ RTCHECK (int ) ;
 int assert (int) ;
 void* chunk2mem (int ) ;
 int chunk_plus_offset (int ,size_t) ;
 size_t chunksize (int ) ;
 int compute_bit2idx (int ,int ) ;
 int least_bit (int ) ;
 int leftmost_child (int ) ;
 int ok_address (TYPE_1__*,int ) ;
 int ok_next (int ,int ) ;
 int replace_dv (TYPE_1__*,int ,size_t) ;
 int set_inuse_and_pinuse (TYPE_1__*,int ,size_t) ;
 int set_size_and_pinuse_of_free_chunk (int ,size_t) ;
 int set_size_and_pinuse_of_inuse_chunk (TYPE_1__*,int ,size_t) ;
 int * treebin_at (TYPE_1__*,int ) ;
 int unlink_large_chunk (TYPE_1__*,int ) ;

__attribute__((used)) static void* tmalloc_small(mstate m, size_t nb) {
  tchunkptr t, v;
  size_t rsize;
  bindex_t i;
  binmap_t leastbit = least_bit(m->treemap);
  compute_bit2idx(leastbit, i);
  v = t = *treebin_at(m, i);
  rsize = chunksize(t) - nb;

  while ((t = leftmost_child(t)) != 0) {
    size_t trem = chunksize(t) - nb;
    if (trem < rsize) {
      rsize = trem;
      v = t;
    }
  }

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
 replace_dv(m, r, rsize);
      }
      return chunk2mem(v);
    }
  }

  CORRUPTION_ERROR_ACTION(m);
  return 0;
}
