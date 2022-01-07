
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_obj_pool {int _clustentries; int objtotal; scalar_t__ _clustsize; int name; TYPE_1__* lut; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {char* vaddr; } ;


 int nm_prdis (char*,int ,scalar_t__,int,void const*) ;
 int nm_prerr (char*,void const*,int ) ;

__attribute__((used)) static ssize_t
netmap_obj_offset(struct netmap_obj_pool *p, const void *vaddr)
{
 int i, k = p->_clustentries, n = p->objtotal;
 ssize_t ofs = 0;

 for (i = 0; i < n; i += k, ofs += p->_clustsize) {
  const char *base = p->lut[i].vaddr;
  ssize_t relofs = (const char *) vaddr - base;

  if (relofs < 0 || relofs >= p->_clustsize)
   continue;

  ofs = ofs + relofs;
  nm_prdis("%s: return offset %d (cluster %d) for pointer %p",
      p->name, ofs, i, vaddr);
  return ofs;
 }
 nm_prerr("address %p is not contained inside any cluster (%s)",
     vaddr, p->name);
 return 0;
}
