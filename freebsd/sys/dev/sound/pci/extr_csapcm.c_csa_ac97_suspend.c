
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct csa_info {int* ac97; int ac97_powerdown; int ac97_general_purpose; int res; } ;


 scalar_t__ BA0_AC97_GENERAL_PURPOSE ;
 scalar_t__ BA0_AC97_HEADPHONE_VOLUME ;
 scalar_t__ BA0_AC97_MASTER_VOLUME ;
 scalar_t__ BA0_AC97_MASTER_VOLUME_MONO ;
 scalar_t__ BA0_AC97_PCM_OUT_VOLUME ;
 scalar_t__ BA0_AC97_POWERDOWN ;
 scalar_t__ BA0_AC97_RESET ;
 int CS461x_AC97_HIGHESTREGTORESTORE ;
 int CS461x_AC97_NUMBER_RESTORE_REGS ;
 int CS_AC97_POWER_CONTROL_ADC ;
 int CS_AC97_POWER_CONTROL_DAC ;
 int CS_AC97_POWER_CONTROL_MIXVON ;
 int csa_readcodec (int *,scalar_t__,int*) ;
 int csa_writecodec (int *,scalar_t__,int) ;

__attribute__((used)) static void
csa_ac97_suspend(struct csa_info *csa)
{
 int count, i;
 uint32_t tmp;

 for (count = 0x2, i=0;
     (count <= CS461x_AC97_HIGHESTREGTORESTORE) &&
     (i < CS461x_AC97_NUMBER_RESTORE_REGS);
     count += 2, i++)
  csa_readcodec(&csa->res, BA0_AC97_RESET + count, &csa->ac97[i]);


 csa_writecodec(&csa->res, BA0_AC97_MASTER_VOLUME, 0x8000);
 csa_writecodec(&csa->res, BA0_AC97_HEADPHONE_VOLUME, 0x8000);
 csa_writecodec(&csa->res, BA0_AC97_MASTER_VOLUME_MONO, 0x8000);
 csa_writecodec(&csa->res, BA0_AC97_PCM_OUT_VOLUME, 0x8000);

 csa_readcodec(&csa->res, BA0_AC97_POWERDOWN, &csa->ac97_powerdown);
 csa_readcodec(&csa->res, BA0_AC97_GENERAL_PURPOSE,
     &csa->ac97_general_purpose);
 csa_readcodec(&csa->res, BA0_AC97_POWERDOWN, &tmp);
 csa_writecodec(&csa->res, BA0_AC97_POWERDOWN,
     tmp | CS_AC97_POWER_CONTROL_MIXVON);

 csa_readcodec(&csa->res, BA0_AC97_POWERDOWN, &tmp);
 csa_writecodec(&csa->res, BA0_AC97_POWERDOWN,
     tmp | CS_AC97_POWER_CONTROL_ADC);

 csa_readcodec(&csa->res, BA0_AC97_POWERDOWN, &tmp);
 csa_writecodec(&csa->res, BA0_AC97_POWERDOWN,
     tmp | CS_AC97_POWER_CONTROL_DAC);
}
