
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fpn {int dummy; } ;
struct fpemu {int fe_cx; int fe_f2; } ;
 int FPSCR_FE ;
 int FPSCR_FG ;
 int FPSCR_FL ;
 int FPSCR_RN ;
 int FP_RZ ;
 int SPE_INST_MASK ;
 struct fpn* fpu_add (struct fpemu*) ;
 int fpu_compare (struct fpemu*,int ) ;
 struct fpn* fpu_div (struct fpemu*) ;
 struct fpn* fpu_mul (struct fpemu*) ;
 struct fpn* fpu_sub (struct fpemu*) ;
 int printf (char*,int) ;
 int spe_to_int (struct fpemu*,int *,int*,int) ;

__attribute__((used)) static int
spe_emu_instr(uint32_t instr, struct fpemu *fpemu,
    struct fpn **result, uint32_t *iresult)
{
 switch (instr & SPE_INST_MASK) {
 case 141:
 case 130:
 case 129:

  break;
 case 133:
  fpemu->fe_cx &= ~FPSCR_RN;
  fpemu->fe_cx |= FP_RZ;
 case 134:
  spe_to_int(fpemu, &fpemu->fe_f2, iresult, 0);
  return (-1);
 case 135:
  fpemu->fe_cx &= ~FPSCR_RN;
  fpemu->fe_cx |= FP_RZ;
 case 136:
  spe_to_int(fpemu, &fpemu->fe_f2, iresult, 1);
  return (-1);
 case 140:
  *result = fpu_add(fpemu);
  break;
 case 128:
  *result = fpu_sub(fpemu);
  break;
 case 131:
  *result = fpu_mul(fpemu);
  break;
 case 132:
  *result = fpu_div(fpemu);
  break;
 case 138:
  fpu_compare(fpemu, 0);
  if (fpemu->fe_cx & FPSCR_FG)
   return (1);
  return (0);
 case 137:
  fpu_compare(fpemu, 0);
  if (fpemu->fe_cx & FPSCR_FL)
   return (1);
  return (0);
 case 139:
  fpu_compare(fpemu, 0);
  if (fpemu->fe_cx & FPSCR_FE)
   return (1);
  return (0);
 default:
  printf("Unknown instruction %x\n", instr);
 }

 return (-1);
}
