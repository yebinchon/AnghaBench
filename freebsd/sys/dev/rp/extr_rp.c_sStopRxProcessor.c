
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* R; } ;
typedef TYPE_1__ CHANNEL_T ;
typedef int Byte_t ;


 int _INDX_ADDR ;
 int le32dec (int*) ;
 int rp_writech4 (TYPE_1__*,int ,int ) ;

void sStopRxProcessor(CHANNEL_T *ChP)
{
   Byte_t R[4];

   R[0] = ChP->R[0];
   R[1] = ChP->R[1];
   R[2] = 0x0a;
   R[3] = ChP->R[3];
   rp_writech4(ChP,_INDX_ADDR,le32dec(R));
}
