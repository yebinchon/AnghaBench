
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ NumAiop; scalar_t__* AiopID; int* AiopNumChan; int CtlID; } ;
typedef TYPE_1__ CONTROLLER_t ;
typedef int Byte_t ;


 scalar_t__ AIOPID_NULL ;
 int CLOCK_PRESC ;
 int CTLID_0001 ;
 int _CLK_PRE ;
 int _INDX_ADDR ;
 int _INDX_DATA ;
 int rp_writeaiop1 (TYPE_1__*,int,int ,int ) ;
 int rp_writeaiop2 (TYPE_1__*,int,int ,int ) ;
 int sPCIControllerEOI (TYPE_1__*) ;
 scalar_t__ sReadAiopID (TYPE_1__*,int) ;
 int sReadAiopNumChan (TYPE_1__*,int) ;

__attribute__((used)) static int
sPCIInitController( CONTROLLER_t *CtlP,
      int AiopNum,
      int IRQNum,
      Byte_t Frequency,
      int PeriodicOnly,
      int VendorDevice)
{
 int i;

 CtlP->CtlID = CTLID_0001;

 sPCIControllerEOI(CtlP);


 CtlP->NumAiop = 0;
 for(i=0; i < AiopNum; i++)
 {

  CtlP->AiopID[i] = sReadAiopID(CtlP, i);

  if(CtlP->AiopID[i] == AIOPID_NULL)
  {
   break;
  }

  switch( VendorDevice ) {
  case 132:
  case 134:
  case 133:
         CtlP->AiopNumChan[i] = 4;
   break;
  case 131:
         CtlP->AiopNumChan[i] = 6;
   break;
  case 128:
  case 129:
  case 130:
  case 136:
  case 135:
         CtlP->AiopNumChan[i] = 8;
   break;
  default:



         CtlP->AiopNumChan[i] = sReadAiopNumChan(CtlP, i);

   break;
  }

  rp_writeaiop2(CtlP, i, _INDX_ADDR,_CLK_PRE);

  rp_writeaiop1(CtlP, i, _INDX_DATA,CLOCK_PRESC);

  CtlP->NumAiop++;
 }

 if(CtlP->NumAiop == 0)
  return(-1);
 else
  return(CtlP->NumAiop);
}
