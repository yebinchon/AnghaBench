
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct envxmm {int en_tw; int en_fos; int en_foo; int en_opcode; int en_fcs; int en_fip; int en_sw; int en_cw; } ;
struct savexmm {TYPE_1__* sv_fp; struct envxmm sv_env; } ;
struct env87 {int en_tw; int en_fos; int en_foo; int en_opcode; int en_fcs; int en_fip; int en_sw; int en_cw; } ;
struct save87 {int * sv_ac; struct env87 sv_env; } ;
struct TYPE_2__ {int fp_acc; } ;



void
npx_set_fpregs_xmm(struct save87 *sv_87, struct savexmm *sv_xmm)
{
 struct env87 *penv_87;
 struct envxmm *penv_xmm;
 int i;

 penv_87 = &sv_87->sv_env;
 penv_xmm = &sv_xmm->sv_env;


 penv_xmm->en_cw = penv_87->en_cw;
 penv_xmm->en_sw = penv_87->en_sw;
 penv_xmm->en_fip = penv_87->en_fip;
 penv_xmm->en_fcs = penv_87->en_fcs;
 penv_xmm->en_opcode = penv_87->en_opcode;
 penv_xmm->en_foo = penv_87->en_foo;
 penv_xmm->en_fos = penv_87->en_fos;







 penv_xmm->en_tw = 0;
 for (i = 0; i < 8; ++i) {
  sv_xmm->sv_fp[i].fp_acc = sv_87->sv_ac[i];
  if ((penv_87->en_tw & (3 << i * 2)) != (3 << i * 2))
   penv_xmm->en_tw |= 1 << i;
 }
}
