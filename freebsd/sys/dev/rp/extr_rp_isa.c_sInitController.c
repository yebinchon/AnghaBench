
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


struct TYPE_18__ {int* io_rid; scalar_t__ NumAiop; scalar_t__* AiopID; int * AiopNumChan; int ** io; int dev; int CtlID; } ;
struct TYPE_17__ {int MBaseIO; int MReg0IO; int MReg1IO; int MReg2IO; int MReg3IO; int MReg2; int MReg3; } ;
typedef TYPE_1__ CONTROLLER_T ;
typedef int Byte_t ;


 scalar_t__ AIOPID_NULL ;
 int CLOCK_PRESC ;
 int CTLID_0001 ;
 TYPE_15__* ISACTL (TYPE_1__*) ;
 int PERIODIC_ONLY ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int _CLK_PRE ;
 int _INDX_ADDR ;
 int _INDX_DATA ;
 void* bus_alloc_resource (int ,int ,int*,int,int,int,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int rman_get_start (int *) ;
 int rp_nisadevs ;
 int rp_writeaiop1 (TYPE_1__*,int,int ,int ) ;
 int rp_writeaiop2 (TYPE_1__*,int,int ,int ) ;
 int rp_writeio1 (TYPE_1__*,size_t,int,int) ;
 int sControllerEOI (TYPE_1__*,TYPE_1__*) ;
 int sDisAiop (TYPE_1__*,TYPE_1__*,int) ;
 int sEnAiop (TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__* sIRQMap ;
 scalar_t__ sReadAiopID (TYPE_1__*,int) ;
 int sReadAiopNumChan (TYPE_1__*,int) ;

__attribute__((used)) static int
sInitController( CONTROLLER_T *CtlP,
   CONTROLLER_T *MudbacCtlP,
   int AiopNum,
   int IRQNum,
   Byte_t Frequency,
   int PeriodicOnly)
{
 int i;
 int ctl_base, aiop_base, aiop_size;

 CtlP->CtlID = CTLID_0001;

 ISACTL(CtlP)->MBaseIO = rp_nisadevs;
 if (MudbacCtlP->io[ISACTL(CtlP)->MBaseIO] != ((void*)0)) {
  ISACTL(CtlP)->MReg0IO = 0x40 + 0;
  ISACTL(CtlP)->MReg1IO = 0x40 + 1;
  ISACTL(CtlP)->MReg2IO = 0x40 + 2;
  ISACTL(CtlP)->MReg3IO = 0x40 + 3;
 } else {
  MudbacCtlP->io_rid[ISACTL(CtlP)->MBaseIO] = ISACTL(CtlP)->MBaseIO;
  ctl_base = rman_get_start(MudbacCtlP->io[0]) + 0x40 + 0x400 * rp_nisadevs;
  MudbacCtlP->io[ISACTL(CtlP)->MBaseIO] = bus_alloc_resource(MudbacCtlP->dev, SYS_RES_IOPORT, &CtlP->io_rid[ISACTL(CtlP)->MBaseIO], ctl_base, ctl_base + 3, 4, RF_ACTIVE);
  ISACTL(CtlP)->MReg0IO = 0;
  ISACTL(CtlP)->MReg1IO = 1;
  ISACTL(CtlP)->MReg2IO = 2;
  ISACTL(CtlP)->MReg3IO = 3;
 }

 ISACTL(CtlP)->MReg2 = 0;
 ISACTL(CtlP)->MReg3 = 0;
 rp_writeio1(MudbacCtlP,ISACTL(CtlP)->MBaseIO,ISACTL(CtlP)->MReg2IO,ISACTL(CtlP)->MReg2);
 rp_writeio1(MudbacCtlP,ISACTL(CtlP)->MBaseIO,ISACTL(CtlP)->MReg3IO,ISACTL(CtlP)->MReg3);
 sControllerEOI(MudbacCtlP,CtlP);


 CtlP->NumAiop = 0;
 for(i=0; i < AiopNum; i++)
 {
  if (CtlP->io[i] == ((void*)0)) {
   CtlP->io_rid[i] = i;
   aiop_base = rman_get_start(CtlP->io[0]) + 0x400 * i;
   if (rp_nisadevs == 0)
    aiop_size = 0x44;
   else
    aiop_size = 0x40;
   CtlP->io[i] = bus_alloc_resource(CtlP->dev, SYS_RES_IOPORT, &CtlP->io_rid[i], aiop_base, aiop_base + aiop_size - 1, aiop_size, RF_ACTIVE);
  } else
   aiop_base = rman_get_start(CtlP->io[i]);
  rp_writeio1(MudbacCtlP,ISACTL(CtlP)->MBaseIO,
       ISACTL(CtlP)->MReg2IO,
       ISACTL(CtlP)->MReg2 | (i & 0x03));
  rp_writeio1(MudbacCtlP,ISACTL(CtlP)->MBaseIO,
       ISACTL(CtlP)->MReg0IO,
       (Byte_t)(aiop_base >> 6));
  sEnAiop(MudbacCtlP,CtlP,i);

  CtlP->AiopID[i] = sReadAiopID(CtlP, i);
  if(CtlP->AiopID[i] == AIOPID_NULL)
  {
   sDisAiop(MudbacCtlP,CtlP,i);
   bus_release_resource(CtlP->dev, SYS_RES_IOPORT, CtlP->io_rid[i], CtlP->io[i]);
   CtlP->io[i] = ((void*)0);
   break;
  }

  CtlP->AiopNumChan[i] = sReadAiopNumChan(CtlP, i);
  rp_writeaiop2(CtlP,i,_INDX_ADDR,_CLK_PRE);
  rp_writeaiop1(CtlP,i,_INDX_DATA,CLOCK_PRESC);
  CtlP->NumAiop++;
  sDisAiop(MudbacCtlP,CtlP,i);
 }

 if(CtlP->NumAiop == 0)
  return(-1);
 else
  return(CtlP->NumAiop);
}
