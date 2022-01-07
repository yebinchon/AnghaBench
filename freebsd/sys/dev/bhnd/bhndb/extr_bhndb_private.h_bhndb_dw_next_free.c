
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_resources {struct bhndb_dw_alloc* dw_alloc; int dwa_count; int dwa_freelist; } ;
struct bhndb_dw_alloc {int refs; } ;


 int KASSERT (int ,char*) ;
 int LIST_EMPTY (int *) ;
 int bit_ffc (int ,int ,int*) ;

__attribute__((used)) static inline struct bhndb_dw_alloc *
bhndb_dw_next_free(struct bhndb_resources *br)
{
 struct bhndb_dw_alloc *dw_free;
 int bit;

 bit_ffc(br->dwa_freelist, br->dwa_count, &bit);
 if (bit == -1)
  return (((void*)0));

 dw_free = &br->dw_alloc[bit];

 KASSERT(LIST_EMPTY(&dw_free->refs),
     ("free list out of sync with refs"));

 return (dw_free);
}
