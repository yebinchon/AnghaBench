
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ath_hal {int dummy; } ;


 int ar5212SetCoverageClass (struct ath_hal*,int ,int) ;

void
ar5416SetCoverageClass(struct ath_hal *ah, uint8_t coverageclass, int now)
{

 ar5212SetCoverageClass(ah, coverageclass, now);
}
