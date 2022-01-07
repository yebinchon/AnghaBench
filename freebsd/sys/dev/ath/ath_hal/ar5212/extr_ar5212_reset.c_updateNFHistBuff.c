
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar5212NfCalHist {size_t currIndex; int * nfCalBuffer; } ;
typedef int int16_t ;


 size_t AR512_NF_CAL_HIST_MAX ;

__attribute__((used)) static __inline void
updateNFHistBuff(struct ar5212NfCalHist *h, int16_t nf)
{
  h->nfCalBuffer[h->currIndex] = nf;
      if (++h->currIndex >= AR512_NF_CAL_HIST_MAX)
  h->currIndex = 0;
}
