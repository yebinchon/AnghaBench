
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csa_info {int * ac97; int res; int ac97_powerdown; int ac97_general_purpose; } ;


 scalar_t__ BA0_AC97_GENERAL_PURPOSE ;
 scalar_t__ BA0_AC97_POWERDOWN ;
 scalar_t__ BA0_AC97_RESET ;
 int CS461x_AC97_HIGHESTREGTORESTORE ;
 int CS461x_AC97_NUMBER_RESTORE_REGS ;
 int csa_writecodec (int *,scalar_t__,int ) ;

__attribute__((used)) static void
csa_ac97_resume(struct csa_info *csa)
{
 int count, i;
 csa_writecodec(&csa->res, BA0_AC97_GENERAL_PURPOSE,
     csa->ac97_general_purpose);




 csa_writecodec(&csa->res, BA0_AC97_POWERDOWN, csa->ac97_powerdown);




 for (count = 0x2, i=0;
     (count <= CS461x_AC97_HIGHESTREGTORESTORE) &&
     (i < CS461x_AC97_NUMBER_RESTORE_REGS);
     count += 2, i++)
  csa_writecodec(&csa->res, BA0_AC97_RESET + count, csa->ac97[i]);
}
