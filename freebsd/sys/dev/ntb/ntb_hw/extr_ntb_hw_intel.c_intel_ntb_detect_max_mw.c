
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_softc {scalar_t__ type; int mw_count; } ;


 int ATOM_MW_COUNT ;
 scalar_t__ HAS_FEATURE (struct ntb_softc*,int ) ;
 scalar_t__ NTB_ATOM ;
 int NTB_SPLIT_BAR ;
 int XEON_HSX_SPLIT_MW_COUNT ;
 int XEON_SNB_MW_COUNT ;

__attribute__((used)) static void
intel_ntb_detect_max_mw(struct ntb_softc *ntb)
{

 if (ntb->type == NTB_ATOM) {
  ntb->mw_count = ATOM_MW_COUNT;
  return;
 }

 if (HAS_FEATURE(ntb, NTB_SPLIT_BAR))
  ntb->mw_count = XEON_HSX_SPLIT_MW_COUNT;
 else
  ntb->mw_count = XEON_SNB_MW_COUNT;
}
