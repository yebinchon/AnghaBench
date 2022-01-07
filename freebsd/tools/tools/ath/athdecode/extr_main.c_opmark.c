
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct athregrec {int reg; int val; } ;
struct TYPE_2__ {int chipnum; } ;
typedef int FILE ;
 int fprintf (int *,char*,int,...) ;
 TYPE_1__ state ;

__attribute__((used)) static const char*
opmark(FILE *fd, int i, const struct athregrec *r)
{
 fprintf(fd, "\n%05d: ", i);
 switch (r->reg) {
 case 143:
  fprintf(fd, "ar%uReset %s", state.chipnum,
   r->val ? "change channel" : "no channel change");
  break;
 case 141:
  fprintf(fd, "ar%u_reset.c; line %u", state.chipnum, r->val);
  break;
 case 142:
  if (r->val)
   fprintf(fd, "ar%uReset (done), FAIL, error %u",
    state.chipnum, r->val);
  else
   fprintf(fd, "ar%uReset (done), OK", state.chipnum);
  break;
 case 145:
  fprintf(fd, "ar%uChipReset, channel %u MHz", state.chipnum, r->val);
  break;
 case 144:
  fprintf(fd, "ar%uPerCalibration, channel %u MHz", state.chipnum, r->val);
  break;
 case 140:
  fprintf(fd, "ar%uSetChannel, channel %u MHz", state.chipnum, r->val);
  break;
 case 146:
  switch (r->val) {
  case 128:
   fprintf(fd, "ar%uAniReset, HAL_M_STA", state.chipnum);
   break;
  case 130:
   fprintf(fd, "ar%uAniReset, HAL_M_IBSS", state.chipnum);
   break;
  case 131:
   fprintf(fd, "ar%uAniReset, HAL_M_HOSTAP", state.chipnum);
   break;
  case 129:
   fprintf(fd, "ar%uAniReset, HAL_M_MONITOR", state.chipnum);
   break;
  default:
   fprintf(fd, "ar%uAniReset, opmode %u", state.chipnum, r->val);
   break;
  }
  break;
 case 147:
  fprintf(fd, "ar%uAniPoll, listenTime %u", state.chipnum, r->val);
  break;
 case 148:
  switch (r->val) {
  case 133:
   fprintf(fd, "ar%uAniControl, PRESENT", state.chipnum);
   break;
  case 136:
   fprintf(fd, "ar%uAniControl, NOISE_IMMUNITY", state.chipnum);
   break;
  case 135:
   fprintf(fd, "ar%uAniControl, OFDM_WEAK_SIGNAL", state.chipnum);
   break;
  case 139:
   fprintf(fd, "ar%uAniControl, CCK_WEAK_SIGNAL", state.chipnum);
   break;
  case 138:
   fprintf(fd, "ar%uAniControl, FIRSTEP_LEVEL", state.chipnum);
   break;
  case 132:
   fprintf(fd, "ar%uAniControl, SPUR_IMMUNITY", state.chipnum);
   break;
  case 137:
   fprintf(fd, "ar%uAniControl, MODE", state.chipnum);
   break;
  case 134:
   fprintf(fd, "ar%uAniControl, PHYERR_RESET", state.chipnum);
   break;
  default:
   fprintf(fd, "ar%uAniControl, cmd %u", state.chipnum, r->val);
   break;
  }
  break;
 default:
  fprintf(fd, "mark #%u value %u/0x%x", r->reg, r->val, r->val);
  break;
 }
 return (((void*)0));
}
