
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct netmap_obj_pool {size_t numclusters; size_t _clustentries; int _clustsize; int _objsize; int name; TYPE_1__* lut; } ;
typedef int ssize_t ;
struct TYPE_2__ {void* vaddr; } ;


 int netmap_obj_free (struct netmap_obj_pool*,size_t) ;
 int nm_prerr (char*,void*,int ) ;

__attribute__((used)) static void
netmap_obj_free_va(struct netmap_obj_pool *p, void *vaddr)
{
 u_int i, j, n = p->numclusters;

 for (i = 0, j = 0; i < n; i++, j += p->_clustentries) {
  void *base = p->lut[i * p->_clustentries].vaddr;
  ssize_t relofs = (ssize_t) vaddr - (ssize_t) base;


  if (base == ((void*)0) || vaddr < base || relofs >= p->_clustsize)
   continue;

  j = j + relofs / p->_objsize;

  netmap_obj_free(p, j);
  return;
 }
 nm_prerr("address %p is not contained inside any cluster (%s)",
     vaddr, p->name);
}
