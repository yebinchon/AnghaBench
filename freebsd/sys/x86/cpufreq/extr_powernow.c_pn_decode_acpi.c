
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int u_int ;
struct powernow_state {size_t fid; int freq; int power; int vid; } ;
struct pn_softc {int errata; int pn_type; int powernow_max_states; int fsb; struct powernow_state* powernow_states; int low; int irt; int rvo; int pll; int mvs; int vst; scalar_t__ sgtc; } ;
struct cf_setting {int freq; int power; scalar_t__* spec; } ;
typedef int * device_t ;


 int A0_ERRATA ;
 size_t ACPI_PN7_CTRL_TO_FID (scalar_t__) ;
 scalar_t__ ACPI_PN7_CTRL_TO_SGTC (scalar_t__) ;
 int ACPI_PN7_CTRL_TO_VID (scalar_t__) ;
 size_t ACPI_PN8_CTRL_TO_FID (scalar_t__) ;
 int ACPI_PN8_CTRL_TO_IRT (scalar_t__) ;
 int ACPI_PN8_CTRL_TO_MVS (scalar_t__) ;
 int ACPI_PN8_CTRL_TO_PLL (scalar_t__) ;
 int ACPI_PN8_CTRL_TO_RVO (scalar_t__) ;
 int ACPI_PN8_CTRL_TO_VID (scalar_t__) ;
 int ACPI_PN8_CTRL_TO_VST (scalar_t__) ;
 int CPUFREQ_DRV_SETTINGS (int *,struct cf_setting*,int*) ;
 int CPUFREQ_DRV_TYPE (int *,int*) ;
 int CPUFREQ_FLAG_INFO_ONLY ;
 int EINVAL ;
 int ENXIO ;
 int MSR_AMDK7_FIDVID_STATUS ;
 size_t PN7_STA_MFID (int ) ;


 int POWERNOW_MAX_STATES ;
 size_t PX_SPEC_CONTROL ;
 struct pn_softc* device_get_softc (int *) ;
 int device_printf (int *,char*) ;
 int do_cpuid (int,int*) ;
 int memcpy (struct powernow_state*,struct powernow_state*,int) ;
 int* pn7_fid_to_mult ;
 int* pn8_fid_to_mult ;
 int rdmsr (int ) ;

__attribute__((used)) static int
pn_decode_acpi(device_t dev, device_t perf_dev)
{
 int i, j, n;
 uint64_t status;
 uint32_t ctrl;
 u_int cpuid;
 u_int regs[4];
 struct pn_softc *sc;
 struct powernow_state state;
 struct cf_setting sets[POWERNOW_MAX_STATES];
 int count = POWERNOW_MAX_STATES;
 int type;
 int rv;

 if (perf_dev == ((void*)0))
  return (ENXIO);

 rv = CPUFREQ_DRV_SETTINGS(perf_dev, sets, &count);
 if (rv)
  return (ENXIO);
 rv = CPUFREQ_DRV_TYPE(perf_dev, &type);
 if (rv || (type & CPUFREQ_FLAG_INFO_ONLY) == 0)
  return (ENXIO);

 sc = device_get_softc(dev);

 do_cpuid(0x80000001, regs);
 cpuid = regs[0];
 if ((cpuid & 0xfff) == 0x760)
  sc->errata |= A0_ERRATA;

 ctrl = 0;
 sc->sgtc = 0;
 for (n = 0, i = 0; i < count; ++i) {
  ctrl = sets[i].spec[PX_SPEC_CONTROL];
  switch (sc->pn_type) {
  case 129:
   state.fid = ACPI_PN7_CTRL_TO_FID(ctrl);
   state.vid = ACPI_PN7_CTRL_TO_VID(ctrl);
   if ((sc->errata & A0_ERRATA) &&
       (pn7_fid_to_mult[state.fid] % 10) == 5)
    continue;
   break;
  case 128:
   state.fid = ACPI_PN8_CTRL_TO_FID(ctrl);
   state.vid = ACPI_PN8_CTRL_TO_VID(ctrl);
   break;
  }
  state.freq = sets[i].freq * 1000;
  state.power = sets[i].power;

  j = n;
  while (j > 0 && sc->powernow_states[j - 1].freq < state.freq) {
   memcpy(&sc->powernow_states[j],
       &sc->powernow_states[j - 1],
       sizeof(struct powernow_state));
   --j;
  }
  memcpy(&sc->powernow_states[j], &state,
      sizeof(struct powernow_state));
  ++n;
 }

 sc->powernow_max_states = n;
 state = sc->powernow_states[0];
 status = rdmsr(MSR_AMDK7_FIDVID_STATUS);

 switch (sc->pn_type) {
 case 129:
  sc->sgtc = ACPI_PN7_CTRL_TO_SGTC(ctrl);






  if (PN7_STA_MFID(status) != state.fid) {
   device_printf(dev, "ACPI MAX frequency not found\n");
   return (EINVAL);
  }
  sc->fsb = state.freq / 100 / pn7_fid_to_mult[state.fid];
  break;
 case 128:
  sc->vst = ACPI_PN8_CTRL_TO_VST(ctrl),
  sc->mvs = ACPI_PN8_CTRL_TO_MVS(ctrl),
  sc->pll = ACPI_PN8_CTRL_TO_PLL(ctrl),
  sc->rvo = ACPI_PN8_CTRL_TO_RVO(ctrl),
  sc->irt = ACPI_PN8_CTRL_TO_IRT(ctrl);
  sc->low = 0;




  if (sc->powernow_max_states >= 2 &&
      (sc->powernow_states[sc->powernow_max_states - 2].fid < 8))
   return (EINVAL);
  sc->fsb = state.freq / 100 / pn8_fid_to_mult[state.fid];
  break;
 }

 return (0);
}
