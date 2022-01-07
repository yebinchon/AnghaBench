
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbb_xen_reqlist {scalar_t__ kva; struct xbb_softc* xbb; } ;
struct xbb_softc {scalar_t__ kva; scalar_t__ gnt_base_addr; } ;


 int PAGE_SIZE ;

__attribute__((used)) static inline uintptr_t
xbb_get_gntaddr(struct xbb_xen_reqlist *reqlist, int pagenr, int sector)
{
 struct xbb_softc *xbb;

 xbb = reqlist->xbb;

 return ((uintptr_t)(xbb->gnt_base_addr +
  (uintptr_t)(reqlist->kva - xbb->kva) +
  (PAGE_SIZE * pagenr) + (sector << 9)));
}
