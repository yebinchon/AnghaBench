
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct iommu_state {unsigned long long is_ptsb; int is_flags; unsigned long long is_tsbsize; unsigned long long is_cr; scalar_t__* is_sb; } ;


 int IMR_CACHE_INVAL ;
 int IMR_CTL ;
 int IMR_TSB ;
 int IOMMU_FIRE ;
 unsigned long long IOMMU_READ8 (struct iommu_state*,int ,int ) ;
 int IOMMU_RERUN_DISABLE ;
 int IOMMU_WRITE8 (struct iommu_state*,int ,int ,unsigned long long) ;
 int ISR_CTL ;
 unsigned long long STRBUF_EN ;
 unsigned long long STRBUF_RR_DIS ;
 int is_iommu ;
 int * is_sb ;

void
iommu_reset(struct iommu_state *is)
{
 uint64_t tsb;
 int i;

 tsb = is->is_ptsb;
 if ((is->is_flags & IOMMU_FIRE) != 0) {
  tsb |= is->is_tsbsize;
  IOMMU_WRITE8(is, is_iommu, IMR_CACHE_INVAL, ~0ULL);
 }
 IOMMU_WRITE8(is, is_iommu, IMR_TSB, tsb);
 IOMMU_WRITE8(is, is_iommu, IMR_CTL, is->is_cr);

 for (i = 0; i < 2; i++) {
  if (is->is_sb[i] != 0) {
   IOMMU_WRITE8(is, is_sb[i], ISR_CTL, STRBUF_EN |
       ((is->is_flags & IOMMU_RERUN_DISABLE) != 0 ?
       STRBUF_RR_DIS : 0));


   if ((IOMMU_READ8(is, is_sb[i], ISR_CTL) &
       STRBUF_EN) == 0)
    is->is_sb[i] = 0;
  }
 }

 (void)IOMMU_READ8(is, is_iommu, IMR_CTL);
}
