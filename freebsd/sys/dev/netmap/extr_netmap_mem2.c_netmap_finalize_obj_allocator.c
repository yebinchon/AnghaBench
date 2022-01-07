
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_obj_pool {int numclusters; int _numclusters; int objtotal; int _objtotal; int alloc_done; size_t _clustsize; int _clustentries; size_t memtotal; int name; TYPE_1__* lut; int _objsize; } ;
struct TYPE_2__ {char* vaddr; int paddr; } ;


 int ENOMEM ;
 int M_NETMAP ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int contigfree (char*,size_t,int ) ;
 char* contigmalloc (size_t,int ,int,size_t,unsigned long,int ,int ) ;
 int netmap_reset_obj_allocator (struct netmap_obj_pool*) ;
 scalar_t__ netmap_verbose ;
 TYPE_1__* nm_alloc_lut (int) ;
 int nm_prerr (char*,int,...) ;
 int nm_prinf (char*,int,int,int,int ) ;
 int vtophys (char*) ;

__attribute__((used)) static int
netmap_finalize_obj_allocator(struct netmap_obj_pool *p)
{
 int i;
 size_t n;

 if (p->lut) {







  return 0;
 }


 p->numclusters = p->_numclusters;
 p->objtotal = p->_objtotal;
 p->alloc_done = 1;

 p->lut = nm_alloc_lut(p->objtotal);
 if (p->lut == ((void*)0)) {
  nm_prerr("Unable to create lookup table for '%s'", p->name);
  goto clean;
 }





 n = p->_clustsize;
 for (i = 0; i < (int)p->objtotal;) {
  int lim = i + p->_clustentries;
  char *clust;
  clust = contigmalloc(n, M_NETMAP, M_NOWAIT | M_ZERO,
      (size_t)0, -1UL, PAGE_SIZE, 0);
  if (clust == ((void*)0)) {




   nm_prerr("Unable to create cluster at %d for '%s' allocator",
       i, p->name);
   if (i < 2)
    goto out;
   lim = i / 2;
   for (i--; i >= lim; i--) {
    if (i % p->_clustentries == 0 && p->lut[i].vaddr)
     contigfree(p->lut[i].vaddr,
      n, M_NETMAP);
    p->lut[i].vaddr = ((void*)0);
   }
  out:
   p->objtotal = i;

   p->numclusters = (i + p->_clustentries - 1) / p->_clustentries;
   break;
  }
  for (; i < lim; i++, clust += p->_objsize) {
   p->lut[i].vaddr = clust;



  }
 }
 p->memtotal = (size_t)p->numclusters * (size_t)p->_clustsize;
 if (netmap_verbose)
  nm_prinf("Pre-allocated %d clusters (%d/%zuKB) for '%s'",
      p->numclusters, p->_clustsize >> 10,
      p->memtotal >> 10, p->name);

 return 0;

clean:
 netmap_reset_obj_allocator(p);
 return ENOMEM;
}
