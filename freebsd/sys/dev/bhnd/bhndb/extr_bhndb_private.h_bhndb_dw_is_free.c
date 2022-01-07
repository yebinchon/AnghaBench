
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_resources {int dwa_freelist; } ;
struct bhndb_dw_alloc {int rnid; int refs; } ;


 int KASSERT (int,char*) ;
 int LIST_EMPTY (int *) ;
 int bit_test (int ,int ) ;

__attribute__((used)) static inline bool
bhndb_dw_is_free(struct bhndb_resources *br, struct bhndb_dw_alloc *dwa)
{
 bool is_free = LIST_EMPTY(&dwa->refs);

 KASSERT(is_free == !bit_test(br->dwa_freelist, dwa->rnid),
     ("refs out of sync with free list"));

 return (is_free);
}
