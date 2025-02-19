
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
typedef int UINT ;
struct TYPE_10__ {TYPE_2__** sataChannel; } ;
struct TYPE_11__ {TYPE_3__ mvSataAdapter; } ;
struct TYPE_9__ {scalar_t__ outstandingCommands; } ;
struct TYPE_8__ {scalar_t__ OsExt; } ;
typedef TYPE_1__* PVBus ;
typedef size_t MV_U8 ;
typedef TYPE_2__ MV_SATA_CHANNEL ;
typedef TYPE_3__ MV_SATA_ADAPTER ;
typedef TYPE_4__ IAL_ADAPTER_T ;


 int CheckPendingCall (int ) ;
 size_t MV_SATA_CHANNELS_NUM ;
 int MvSataResetChannel (TYPE_3__*,size_t) ;
 int StallExec (int) ;
 int _VBUS_P0 ;
 int dataxfer_poll () ;
 int mvSataInterruptServiceRoutine (TYPE_3__*) ;
 int xor_poll () ;

void fCompleteAllCommandsSynchronously(PVBus _vbus_p)
{
 UINT cont;
 ULONG ticks = 0;
 MV_U8 channel;
 MV_SATA_ADAPTER *pMvSataAdapter = &((IAL_ADAPTER_T *)_vbus_p->OsExt)->mvSataAdapter;
 MV_SATA_CHANNEL *pMvSataChannel;

 do {
check_cmds:
  cont = 0;
  CheckPendingCall(_VBUS_P0);




  for (channel=0;channel< MV_SATA_CHANNELS_NUM;channel++) {
   pMvSataChannel = pMvSataAdapter->sataChannel[channel];
   if (pMvSataChannel && pMvSataChannel->outstandingCommands)
   {
    while (pMvSataChannel->outstandingCommands) {
     if (!mvSataInterruptServiceRoutine(pMvSataAdapter)) {
      StallExec(1000);
      if (ticks++ > 3000) {
       MvSataResetChannel(pMvSataAdapter,channel);
       goto check_cmds;
      }
     }
     else
      ticks = 0;
    }
    cont = 1;
   }
  }
 } while (cont);
}
