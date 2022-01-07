
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** sataChannel; } ;
struct TYPE_5__ {TYPE_1__ mvSataAdapter; } ;
typedef size_t MV_U8 ;
typedef TYPE_2__ IAL_ADAPTER_T ;


 int HPT_ASSERT (int) ;
 size_t MV_SATA_CHANNELS_NUM ;

__attribute__((used)) static void
hptmv_free_channel(IAL_ADAPTER_T *pAdapter, MV_U8 channelNum)
{
 HPT_ASSERT(channelNum < MV_SATA_CHANNELS_NUM);
 pAdapter->mvSataAdapter.sataChannel[channelNum] = ((void*)0);
}
