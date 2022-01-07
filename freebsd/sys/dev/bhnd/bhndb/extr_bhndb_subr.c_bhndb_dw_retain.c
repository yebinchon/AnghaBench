
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct bhndb_resources {int dwa_freelist; } ;
struct bhndb_dw_rentry {struct resource* dw_res; } ;
struct bhndb_dw_alloc {int rnid; int refs; } ;


 int ENOMEM ;
 int KASSERT (int ,char*) ;
 int LIST_INSERT_HEAD (int *,struct bhndb_dw_rentry*,int ) ;
 int M_BHND ;
 int M_NOWAIT ;
 int * bhndb_dw_find_resource_entry (struct bhndb_dw_alloc*,struct resource*) ;
 int bit_set (int ,int ) ;
 int dw_link ;
 struct bhndb_dw_rentry* malloc (int,int ,int ) ;

int
bhndb_dw_retain(struct bhndb_resources *br, struct bhndb_dw_alloc *dwa,
    struct resource *res)
{
 struct bhndb_dw_rentry *rentry;

 KASSERT(bhndb_dw_find_resource_entry(dwa, res) == ((void*)0),
     ("double-retain of dynamic window for same resource"));



 rentry = malloc(sizeof(*rentry), M_BHND, M_NOWAIT);
 if (rentry == ((void*)0))
  return (ENOMEM);

 rentry->dw_res = res;
 LIST_INSERT_HEAD(&dwa->refs, rentry, dw_link);


 bit_set(br->dwa_freelist, dwa->rnid);

 return (0);
}
