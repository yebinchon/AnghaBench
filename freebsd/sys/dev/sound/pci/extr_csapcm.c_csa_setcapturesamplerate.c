
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int csa_res ;


 scalar_t__ BA1_CCI ;
 scalar_t__ BA1_CCST ;
 scalar_t__ BA1_CD ;
 scalar_t__ BA1_CFG1 ;
 scalar_t__ BA1_CFG2 ;
 scalar_t__ BA1_CPI ;
 scalar_t__ BA1_CSPB ;
 scalar_t__ BA1_CSRC ;
 int BA1_VARIDEC_BUF_1 ;
 int GOF_PER_SEC ;
 int csa_writemem (int *,scalar_t__,int) ;

__attribute__((used)) static void
csa_setcapturesamplerate(csa_res *resp, u_long ulOutRate)
{
 u_long ulPhiIncr, ulCoeffIncr, ulTemp1, ulTemp2;
 u_long ulCorrectionPerGOF, ulCorrectionPerSec, ulInitialDelay;
 u_long dwFrameGroupLength, dwCnt;
 u_long ulInRate;

 ulInRate = 48000;





 if((ulOutRate * 9) < ulInRate)
  return;





 if(ulOutRate > ulInRate)
  return;
 ulTemp1 = ulOutRate << 16;
 ulCoeffIncr = ulTemp1 / ulInRate;
 ulTemp1 -= ulCoeffIncr * ulInRate;
 ulTemp1 <<= 7;
 ulCoeffIncr <<= 7;
 ulCoeffIncr += ulTemp1 / ulInRate;
 ulCoeffIncr ^= 0xFFFFFFFF;
 ulCoeffIncr++;
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
 ulInitialDelay = ((ulInRate * 24) + ulOutRate - 1) / ulOutRate;




 csa_writemem(resp, BA1_CSRC,
       ((ulCorrectionPerSec << 16) & 0xFFFF0000) | (ulCorrectionPerGOF & 0xFFFF));
 csa_writemem(resp, BA1_CCI, ulCoeffIncr);
 csa_writemem(resp, BA1_CD,
      (((BA1_VARIDEC_BUF_1 + (ulInitialDelay << 2)) << 16) & 0xFFFF0000) | 0x80);
 csa_writemem(resp, BA1_CPI, ulPhiIncr);






 dwFrameGroupLength = 1;
 for(dwCnt = 2; dwCnt <= 64; dwCnt *= 2)
 {
  if(((ulOutRate / dwCnt) * dwCnt) !=
     ulOutRate)
  {
   dwFrameGroupLength *= 2;
  }
 }
 if(((ulOutRate / 3) * 3) !=
    ulOutRate)
 {
  dwFrameGroupLength *= 3;
 }
 for(dwCnt = 5; dwCnt <= 125; dwCnt *= 5)
 {
  if(((ulOutRate / dwCnt) * dwCnt) !=
     ulOutRate)
  {
   dwFrameGroupLength *= 5;
  }
 }




 csa_writemem(resp, BA1_CFG1, dwFrameGroupLength);
 csa_writemem(resp, BA1_CFG2, (0x00800000 | dwFrameGroupLength));
 csa_writemem(resp, BA1_CCST, 0x0000FFFF);
 csa_writemem(resp, BA1_CSPB, ((65536 * ulOutRate) / 24000));
 csa_writemem(resp, (BA1_CSPB + 4), 0x0000FFFF);
}
