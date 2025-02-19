
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
struct sglist_seg {scalar_t__ ss_paddr; size_t ss_len; } ;
struct sglist {scalar_t__ sg_nseg; scalar_t__ sg_maxseg; } ;


 int EFBIG ;

__attribute__((used)) static __inline int
_sglist_append_range(struct sglist *sg, struct sglist_seg **ssp,
    vm_paddr_t paddr, size_t len)
{
 struct sglist_seg *ss;

 ss = *ssp;
 if (ss->ss_paddr + ss->ss_len == paddr)
  ss->ss_len += len;
 else {
  if (sg->sg_nseg == sg->sg_maxseg)
   return (EFBIG);
  ss++;
  ss->ss_paddr = paddr;
  ss->ss_len = len;
  sg->sg_nseg++;
  *ssp = ss;
 }
 return (0);
}
