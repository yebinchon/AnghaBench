
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct powernow_state {scalar_t__ freq; size_t fid; int vid; void* power; } ;
struct pn_softc {int pn_type; int fsb; int errata; int powernow_max_states; struct powernow_state* powernow_states; } ;


 int A0_ERRATA ;
 void* CPUFREQ_VAL_UNKNOWN ;


 int POWERNOW_MAX_STATES ;
 scalar_t__ bootverbose ;
 int memcpy (struct powernow_state*,struct powernow_state*,int) ;
 int* pn7_fid_to_mult ;
 int* pn8_fid_to_mult ;
 int printf (char*,int,scalar_t__,int,int) ;

__attribute__((used)) static int
decode_pst(struct pn_softc *sc, uint8_t *p, int npstates)
{
 int i, j, n;
 struct powernow_state state;

 for (i = 0; i < POWERNOW_MAX_STATES; ++i)
  sc->powernow_states[i].freq = CPUFREQ_VAL_UNKNOWN;

 for (n = 0, i = 0; i < npstates; ++i) {
  state.fid = *p++;
  state.vid = *p++;
  state.power = CPUFREQ_VAL_UNKNOWN;

  switch (sc->pn_type) {
  case 129:
   state.freq = 100 * pn7_fid_to_mult[state.fid] * sc->fsb;
   if ((sc->errata & A0_ERRATA) &&
       (pn7_fid_to_mult[state.fid] % 10) == 5)
    continue;
   break;
  case 128:
   state.freq = 100 * pn8_fid_to_mult[state.fid] * sc->fsb;
   break;
  }

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

 if (bootverbose)
  for (i = 0; i < sc->powernow_max_states; ++i) {
   int fid = sc->powernow_states[i].fid;
   int vid = sc->powernow_states[i].vid;

   printf("powernow: %2i %8dkHz FID %02x VID %02x\n",
       i,
       sc->powernow_states[i].freq,
       fid,
       vid);
  }

 return (0);
}
