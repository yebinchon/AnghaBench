
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int csa_res ;


 int BA1_PPI ;
 int BA1_PSRC ;
 int GOF_PER_SEC ;
 int csa_writemem (int *,int ,int) ;

__attribute__((used)) static void
csa_setplaysamplerate(csa_res *resp, u_long ulInRate)
{
 u_long ulTemp1, ulTemp2;
 u_long ulPhiIncr;
 u_long ulCorrectionPerGOF, ulCorrectionPerSec;
 u_long ulOutRate;

 ulOutRate = 48000;
 ulTemp1 = ulInRate << 16;
 ulPhiIncr = ulTemp1 / ulOutRate;
 ulTemp1 -= ulPhiIncr * ulOutRate;
 ulTemp1 <<= 10;
 ulPhiIncr <<= 10;
 ulTemp2 = ulTemp1 / ulOutRate;
 ulPhiIncr += ulTemp2;
 ulTemp1 -= ulTemp2 * ulOutRate;
 ulCorrectionPerGOF = ulTemp1 / GOF_PER_SEC;
 ulTemp1 -= ulCorrectionPerGOF * GOF_PER_SEC;
 ulCorrectionPerSec = ulTemp1;




 csa_writemem(resp, BA1_PSRC, ((ulCorrectionPerSec << 16) & 0xFFFF0000) | (ulCorrectionPerGOF & 0xFFFF));
 csa_writemem(resp, BA1_PPI, ulPhiIncr);
}
