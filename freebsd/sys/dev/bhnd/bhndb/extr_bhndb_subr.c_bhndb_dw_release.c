
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct bhndb_resources {int dwa_freelist; } ;
struct bhndb_dw_rentry {int dummy; } ;
struct bhndb_dw_alloc {int rnid; int refs; } ;


 int KASSERT (int ,char*) ;
 scalar_t__ LIST_EMPTY (int *) ;
 int LIST_REMOVE (struct bhndb_dw_rentry*,int ) ;
 int M_BHND ;
 struct bhndb_dw_rentry* bhndb_dw_find_resource_entry (struct bhndb_dw_alloc*,struct resource*) ;
 int bit_clear (int ,int ) ;
 int dw_link ;
 int free (struct bhndb_dw_rentry*,int ) ;

void
bhndb_dw_release(struct bhndb_resources *br, struct bhndb_dw_alloc *dwa,
    struct resource *r)
{
 struct bhndb_dw_rentry *rentry;


 rentry = bhndb_dw_find_resource_entry(dwa, r);
 KASSERT(rentry != ((void*)0), ("over release of resource entry"));

 LIST_REMOVE(rentry, dw_link);
 free(rentry, M_BHND);


 if (LIST_EMPTY(&dwa->refs))
  bit_clear(br->dwa_freelist, dwa->rnid);
}
