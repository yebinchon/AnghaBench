
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t u_int ;
struct pn_softc {int fsb; int vid_to_volts; int pn_type; scalar_t__ errata; } ;
struct pcpu {int pc_cpuid; } ;
typedef int device_t ;


 int ENODEV ;
 int MSR_AMDK7_FIDVID_STATUS ;
 size_t PN7_STA_CFID (int) ;
 size_t PN7_STA_MFID (int) ;
 size_t PN7_STA_SFID (int) ;
 int PN7_TYPE ;
 size_t PN8_STA_CFID (int) ;
 size_t PN8_STA_MFID (int) ;
 size_t PN8_STA_SFID (int) ;
 int PN8_TYPE ;
 int cpu_est_clockrate (int ,int*) ;
 struct pcpu* cpu_get_pcpu (int ) ;
 int cpu_id ;
 struct pn_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 int pn7_desktop_vid_to_volts ;
 int* pn7_fid_to_mult ;
 int pn7_mobile_vid_to_volts ;
 int* pn8_fid_to_mult ;
 int pn8_vid_to_volts ;
 int rdmsr (int ) ;

__attribute__((used)) static int
pn_probe(device_t dev)
{
 struct pn_softc *sc;
 uint64_t status;
 uint64_t rate;
 struct pcpu *pc;
 u_int sfid, mfid, cfid;

 sc = device_get_softc(dev);
 sc->errata = 0;
 status = rdmsr(MSR_AMDK7_FIDVID_STATUS);

 pc = cpu_get_pcpu(dev);
 if (pc == ((void*)0))
  return (ENODEV);

 cpu_est_clockrate(pc->pc_cpuid, &rate);

 switch (cpu_id & 0xf00) {
 case 0x600:
  sfid = PN7_STA_SFID(status);
  mfid = PN7_STA_MFID(status);
  cfid = PN7_STA_CFID(status);
  sc->pn_type = PN7_TYPE;
  sc->fsb = rate / 100000 / pn7_fid_to_mult[cfid];






  if (PN7_STA_SFID(status) != PN7_STA_MFID(status)) {
   sc->vid_to_volts = pn7_mobile_vid_to_volts;
   device_set_desc(dev, "PowerNow! K7");
  } else {
   sc->vid_to_volts = pn7_desktop_vid_to_volts;
   device_set_desc(dev, "Cool`n'Quiet K7");
  }
  break;

 case 0xf00:
  sfid = PN8_STA_SFID(status);
  mfid = PN8_STA_MFID(status);
  cfid = PN8_STA_CFID(status);
  sc->pn_type = PN8_TYPE;
  sc->vid_to_volts = pn8_vid_to_volts;
  sc->fsb = rate / 100000 / pn8_fid_to_mult[cfid];

  if (PN8_STA_SFID(status) != PN8_STA_MFID(status))
   device_set_desc(dev, "PowerNow! K8");
  else
   device_set_desc(dev, "Cool`n'Quiet K8");
  break;
 default:
  return (ENODEV);
 }

 return (0);
}
