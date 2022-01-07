
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct xbb_xen_reqlist {int * bounce; } ;


 int PAGE_SIZE ;

__attribute__((used)) static inline uint8_t *
xbb_reqlist_bounce_addr(struct xbb_xen_reqlist *reqlist, int pagenr, int sector)
{
 return (reqlist->bounce + (PAGE_SIZE * pagenr) + (sector << 9));
}
