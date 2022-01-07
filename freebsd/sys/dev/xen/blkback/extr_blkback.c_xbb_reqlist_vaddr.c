
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct xbb_xen_reqlist {int * kva; } ;


 int PAGE_SIZE ;

__attribute__((used)) static inline uint8_t *
xbb_reqlist_vaddr(struct xbb_xen_reqlist *reqlist, int pagenr, int sector)
{
 return (reqlist->kva + (PAGE_SIZE * pagenr) + (sector << 9));
}
