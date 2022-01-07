
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct trapframe {unsigned int* fixreg; int cr; scalar_t__ srr0; } ;
struct fpn {int dummy; } ;
struct fpemu {struct fpn fe_f2; struct fpn fe_f1; struct fpn fe_f3; int fe_cx; } ;
typedef int fpemu ;
 int EVFSCMPEQ ;
 int EVFSCMPGT ;
 int EVFSCMPLT ;



 int OPC_SHIFT ;
 int PSL_VEC ;


 int SPEFSCR_FINVS ;
 int SPE_INST_MASK ;
 int SPE_OPC ;

 int SPR_SPEFSCR ;

 int fpscr_to_spefscr (int ) ;
 int fpu_ftod (struct fpemu*,struct fpn*,int*) ;
 int fpu_ftos (struct fpemu*,struct fpn*) ;
 int fueword32 (void*,int*) ;
 int memset (struct fpemu*,int ,int) ;
 int mfmsr () ;
 int mfspr (int ) ;
 int mtmsr (int) ;
 int mtspr (int ,int) ;
 int panic (char*,int) ;
 int spe_emu_instr (int,struct fpemu*,struct fpn**,int*) ;
 int spe_explode (struct fpemu*,struct fpn*,int,unsigned int,unsigned int) ;
 int spe_load_reg_high (int,int) ;
 unsigned int spe_save_reg_high (int) ;

void
spe_handle_fpdata(struct trapframe *frame)
{
 struct fpemu fpemu;
 struct fpn *result;
 uint32_t instr, instr_sec_op;
 uint32_t cr_shift, ra, rb, rd, src;
 uint32_t high, low, res, tmp;
 uint32_t spefscr = 0;
 uint32_t ftod_res[2];
 int width;
 int err;
 uint32_t msr;

 err = fueword32((void *)frame->srr0, &instr);

 if (err != 0)
  return;
              ;

 if ((instr >> OPC_SHIFT) != SPE_OPC)
  return;

 msr = mfmsr();






 rd = (instr >> 21) & 0x1f;
 ra = (instr >> 16) & 0x1f;
 rb = (instr >> 11) & 0x1f;
 src = (instr >> 5) & 0x7;
 cr_shift = 28 - (rd & 0x1f);

 instr_sec_op = (instr & 0x7ff);

 memset(&fpemu, 0, sizeof(fpemu));

 width = 132;
 switch (src) {
 case 130:
  mtmsr(msr | PSL_VEC);
  switch (instr_sec_op) {
  case 135:
   high = spe_save_reg_high(ra) & ~(1U << 31);
   frame->fixreg[rd] = frame->fixreg[ra] & ~(1U << 31);
   spe_load_reg_high(rd, high);
   break;
  case 134:
   high = spe_save_reg_high(ra) | (1U << 31);
   frame->fixreg[rd] = frame->fixreg[ra] | (1U << 31);
   spe_load_reg_high(rd, high);
   break;
  case 133:
   high = spe_save_reg_high(ra) ^ (1U << 31);
   frame->fixreg[rd] = frame->fixreg[ra] ^ (1U << 31);
   spe_load_reg_high(rd, high);
   break;
  default:

   spe_explode(&fpemu, &fpemu.fe_f1, 131,
       spe_save_reg_high(ra), 0);
   spe_explode(&fpemu, &fpemu.fe_f2, 131,
       spe_save_reg_high(rb), 0);
   high = spe_emu_instr(instr_sec_op, &fpemu, &result,
       &tmp);

   if (high < 0)
    spe_load_reg_high(rd, tmp);

   spefscr = fpscr_to_spefscr(fpemu.fe_cx) << 16;

   memset(&fpemu, 0, sizeof(fpemu));


   spe_explode(&fpemu, &fpemu.fe_f1, 131,
       frame->fixreg[ra], 0);
   spe_explode(&fpemu, &fpemu.fe_f2, 131,
       frame->fixreg[rb], 0);
   spefscr |= fpscr_to_spefscr(fpemu.fe_cx);
   low = spe_emu_instr(instr_sec_op, &fpemu, &result,
       &frame->fixreg[rd]);
   if (instr_sec_op == EVFSCMPEQ ||
       instr_sec_op == EVFSCMPGT ||
       instr_sec_op == EVFSCMPLT) {
    res = (high << 3) | (low << 2) |
        ((high | low) << 1) | (high & low);
    width = 132;
   } else
    width = 128;
   break;
  }
  goto end;

 case 129:
  switch (instr_sec_op) {
  case 139:
   frame->fixreg[rd] = frame->fixreg[ra] & ~(1U << 31);
   break;
  case 137:
   frame->fixreg[rd] = frame->fixreg[ra] | (1U << 31);
   break;
  case 136:
   frame->fixreg[rd] = frame->fixreg[ra] ^ (1U << 31);
   break;
  case 138:
   mtmsr(msr | PSL_VEC);
   spe_explode(&fpemu, &fpemu.fe_f3, 152,
       spe_save_reg_high(rb), frame->fixreg[rb]);
   result = &fpemu.fe_f3;
   width = 131;
   break;
  default:
   spe_explode(&fpemu, &fpemu.fe_f1, 131,
       frame->fixreg[ra], 0);
   spe_explode(&fpemu, &fpemu.fe_f2, 131,
       frame->fixreg[rb], 0);
   width = 131;
  }
  break;
 case 151:
  mtmsr(msr | PSL_VEC);
  switch (instr_sec_op) {
  case 143:
   high = spe_save_reg_high(ra) & ~(1U << 31);
   frame->fixreg[rd] = frame->fixreg[ra];
   spe_load_reg_high(rd, high);
   break;
  case 141:
   high = spe_save_reg_high(ra) | (1U << 31);
   frame->fixreg[rd] = frame->fixreg[ra];
   spe_load_reg_high(rd, high);
   break;
  case 140:
   high = spe_save_reg_high(ra) ^ (1U << 31);
   frame->fixreg[rd] = frame->fixreg[ra];
   spe_load_reg_high(rd, high);
   break;
  case 142:
   spe_explode(&fpemu, &fpemu.fe_f3, 131,
       frame->fixreg[rb], 0);
   result = &fpemu.fe_f3;
   width = 152;
   break;
  default:
   spe_explode(&fpemu, &fpemu.fe_f1, 152,
       spe_save_reg_high(ra), frame->fixreg[ra]);
   spe_explode(&fpemu, &fpemu.fe_f2, 152,
       spe_save_reg_high(rb), frame->fixreg[rb]);
   width = 152;
  }
  break;
 }
 switch (instr_sec_op) {
 case 142:
 case 138:

  break;
 default:
  res = spe_emu_instr(instr_sec_op, &fpemu, &result,
      &frame->fixreg[rd]);
  if (res != -1)
   res <<= 2;
  break;
 }

 switch (instr_sec_op & SPE_INST_MASK) {
 case 150:
 case 149:
 case 148:
  frame->cr &= ~(0xf << cr_shift);
  frame->cr |= (res << cr_shift);
  break;
 case 145:
 case 144:
 case 147:
 case 146:
  break;
 default:
  switch (width) {
  case 132:
  case 128:
   break;
  case 131:
   frame->fixreg[rd] = fpu_ftos(&fpemu, result);
   break;
  case 152:
   spe_load_reg_high(rd, fpu_ftod(&fpemu, result, ftod_res));
   frame->fixreg[rd] = ftod_res[1];
   break;
  default:
   panic("Unknown storage width %d", width);
   break;
  }
 }

end:
 spefscr |= (mfspr(SPR_SPEFSCR) & ~SPEFSCR_FINVS);
 mtspr(SPR_SPEFSCR, spefscr);
 frame->srr0 += 4;
 mtmsr(msr);

 return;
}
