
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef size_t vm_offset_t ;
struct sglist_seg {size_t ss_len; int ss_paddr; } ;
struct sglist {int sg_nseg; struct sglist_seg* sg_segs; } ;
typedef int * pmap_t ;


 size_t MIN (size_t,scalar_t__) ;
 size_t PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int _sglist_append_range (struct sglist*,struct sglist_seg**,int ,size_t) ;
 int pmap_extract (int *,size_t) ;
 int pmap_kextract (size_t) ;

__attribute__((used)) static __inline int
_sglist_append_buf(struct sglist *sg, void *buf, size_t len, pmap_t pmap,
    size_t *donep)
{
 struct sglist_seg *ss;
 vm_offset_t vaddr, offset;
 vm_paddr_t paddr;
 size_t seglen;
 int error;

 if (donep)
  *donep = 0;
 if (len == 0)
  return (0);


 vaddr = (vm_offset_t)buf;
 offset = vaddr & PAGE_MASK;
 if (pmap != ((void*)0))
  paddr = pmap_extract(pmap, vaddr);
 else
  paddr = pmap_kextract(vaddr);
 seglen = MIN(len, PAGE_SIZE - offset);
 if (sg->sg_nseg == 0) {
  ss = sg->sg_segs;
  ss->ss_paddr = paddr;
  ss->ss_len = seglen;
  sg->sg_nseg = 1;
 } else {
  ss = &sg->sg_segs[sg->sg_nseg - 1];
  error = _sglist_append_range(sg, &ss, paddr, seglen);
  if (error)
   return (error);
 }
 vaddr += seglen;
 len -= seglen;
 if (donep)
  *donep += seglen;

 while (len > 0) {
  seglen = MIN(len, PAGE_SIZE);
  if (pmap != ((void*)0))
   paddr = pmap_extract(pmap, vaddr);
  else
   paddr = pmap_kextract(vaddr);
  error = _sglist_append_range(sg, &ss, paddr, seglen);
  if (error)
   return (error);
  vaddr += seglen;
  len -= seglen;
  if (donep)
   *donep += seglen;
 }

 return (0);
}
