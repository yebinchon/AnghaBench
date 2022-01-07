
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__** sataChannel; } ;
struct TYPE_10__ {TYPE_3__ mvSataAdapter; } ;
struct TYPE_8__ {scalar_t__ OsExt; } ;
struct TYPE_7__ {scalar_t__ outstandingCommands; } ;
typedef TYPE_2__* PVBus ;
typedef size_t MV_U8 ;
typedef TYPE_3__ MV_SATA_ADAPTER ;
typedef TYPE_4__ IAL_ADAPTER_T ;


 size_t MV_SATA_CHANNELS_NUM ;
 int MvSataResetChannel (TYPE_3__*,size_t) ;

__attribute__((used)) static int
fResetActiveCommands(PVBus _vbus_p)
{
 MV_SATA_ADAPTER *pMvSataAdapter = &((IAL_ADAPTER_T *)_vbus_p->OsExt)->mvSataAdapter;
 MV_U8 channel;
 for (channel=0;channel< MV_SATA_CHANNELS_NUM;channel++) {
  if (pMvSataAdapter->sataChannel[channel] && pMvSataAdapter->sataChannel[channel]->outstandingCommands)
   MvSataResetChannel(pMvSataAdapter,channel);
 }
 return 0;
}
