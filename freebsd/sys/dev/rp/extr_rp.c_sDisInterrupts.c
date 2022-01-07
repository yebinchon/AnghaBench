
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Word_t ;
struct TYPE_6__ {int* RxControl; int* TxControl; size_t ChanNum; } ;
typedef TYPE_1__ CHANNEL_T ;
typedef int Byte_t ;


 int CHANINT_EN ;
 int MCINT_EN ;
 int RXINT_EN ;
 int SRCINT_EN ;
 int TXINT_EN ;
 int _INDX_ADDR ;
 int _INT_MASK ;
 int le32dec (int*) ;
 int rp_readch1 (TYPE_1__*,int ) ;
 int* rp_sBitMapClrTbl ;
 int rp_writech1 (TYPE_1__*,int ,int) ;
 int rp_writech4 (TYPE_1__*,int ,int ) ;

void sDisInterrupts(CHANNEL_T *ChP,Word_t Flags)
{
   Byte_t Mask;

   ChP->RxControl[2] &=
  ~((Byte_t)Flags & (RXINT_EN | SRCINT_EN | MCINT_EN));
   rp_writech4(ChP,_INDX_ADDR,le32dec(ChP->RxControl));
   ChP->TxControl[2] &= ~((Byte_t)Flags & TXINT_EN);
   rp_writech4(ChP,_INDX_ADDR,le32dec(ChP->TxControl));

   if(Flags & CHANINT_EN)
   {
      Mask = rp_readch1(ChP,_INT_MASK) & rp_sBitMapClrTbl[ChP->ChanNum];
      rp_writech1(ChP,_INT_MASK,Mask);
   }
}
