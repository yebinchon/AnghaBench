
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pn_softc {int errata; int sgtc; } ;


 int A0_ERRATA ;
 int MSR_AMDK7_FIDVID_CTL ;
 int MSR_AMDK7_FIDVID_STATUS ;
 int PN7_CTR_FID (int) ;
 int PN7_CTR_FIDC ;
 int PN7_CTR_FIDCHRATIO ;
 int PN7_CTR_SGTC (int ) ;
 int PN7_CTR_VID (int) ;
 int PN7_CTR_VIDC ;
 int PN7_STA_CFID (int) ;
 int PN7_STA_CVID (int) ;
 int disable_intr () ;
 int enable_intr () ;
 scalar_t__* pn7_fid_to_mult ;
 int rdmsr (int ) ;
 int wrmsr (int ,int) ;

__attribute__((used)) static int
pn7_setfidvid(struct pn_softc *sc, int fid, int vid)
{
 int cfid, cvid;
 uint64_t status, ctl;

 status = rdmsr(MSR_AMDK7_FIDVID_STATUS);
 cfid = PN7_STA_CFID(status);
 cvid = PN7_STA_CVID(status);


 if (fid == cfid && vid == cvid)
  return (0);

 ctl = rdmsr(MSR_AMDK7_FIDVID_CTL) & PN7_CTR_FIDCHRATIO;

 ctl |= PN7_CTR_FID(fid);
 ctl |= PN7_CTR_VID(vid);
 ctl |= PN7_CTR_SGTC(sc->sgtc);

 if (sc->errata & A0_ERRATA)
  disable_intr();

 if (pn7_fid_to_mult[fid] < pn7_fid_to_mult[cfid]) {
  wrmsr(MSR_AMDK7_FIDVID_CTL, ctl | PN7_CTR_FIDC);
  if (vid != cvid)
   wrmsr(MSR_AMDK7_FIDVID_CTL, ctl | PN7_CTR_VIDC);
 } else {
  wrmsr(MSR_AMDK7_FIDVID_CTL, ctl | PN7_CTR_VIDC);
  if (fid != cfid)
   wrmsr(MSR_AMDK7_FIDVID_CTL, ctl | PN7_CTR_FIDC);
 }

 if (sc->errata & A0_ERRATA)
  enable_intr();

 return (0);
}
