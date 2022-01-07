
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;
typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ u_long ;
struct vm_phys_seg {int domain; scalar_t__ start; scalar_t__ end; int * first_page; } ;


 int KASSERT (int,char*) ;
 scalar_t__ VM_PAGE_TO_PHYS (int *) ;
 size_t atop (scalar_t__) ;
 int powerof2 (scalar_t__) ;
 scalar_t__ ptoa (scalar_t__) ;
 int * vm_page_scan_contig (scalar_t__,int *,int *,scalar_t__,scalar_t__,int) ;
 int vm_phys_nsegs ;
 struct vm_phys_seg* vm_phys_segs ;

vm_page_t
vm_phys_scan_contig(int domain, u_long npages, vm_paddr_t low, vm_paddr_t high,
    u_long alignment, vm_paddr_t boundary, int options)
{
 vm_paddr_t pa_end;
 vm_page_t m_end, m_run, m_start;
 struct vm_phys_seg *seg;
 int segind;

 KASSERT(npages > 0, ("npages is 0"));
 KASSERT(powerof2(alignment), ("alignment is not a power of 2"));
 KASSERT(powerof2(boundary), ("boundary is not a power of 2"));
 if (low >= high)
  return (((void*)0));
 for (segind = 0; segind < vm_phys_nsegs; segind++) {
  seg = &vm_phys_segs[segind];
  if (seg->domain != domain)
   continue;
  if (seg->start >= high)
   break;
  if (low >= seg->end)
   continue;
  if (low <= seg->start)
   m_start = seg->first_page;
  else
   m_start = &seg->first_page[atop(low - seg->start)];
  if (high < seg->end)
   pa_end = high;
  else
   pa_end = seg->end;
  if (pa_end - VM_PAGE_TO_PHYS(m_start) < ptoa(npages))
   continue;
  m_end = &seg->first_page[atop(pa_end - seg->start)];
  m_run = vm_page_scan_contig(npages, m_start, m_end,
      alignment, boundary, options);
  if (m_run != ((void*)0))
   return (m_run);
 }
 return (((void*)0));
}
