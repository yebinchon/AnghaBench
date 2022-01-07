
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ttdsaXchg_t ;
typedef int tdsaDeviceData_t ;
typedef int bit8 ;
typedef size_t bit32 ;
struct TYPE_4__ {size_t Idx; TYPE_1__* Data; } ;
struct TYPE_3__ {int * oneDeviceData; int * ttdsaXchg; int Time; } ;


 int GetHiResTimeStamp () ;
 size_t TD_DEBUG_IO_TRACE_BUFFER_MAX ;
 TYPE_2__ TraceData ;
 int osti_memcpy (int *,int *,int) ;

void TDTraceAdd(ttdsaXchg_t *ttdsaXchg, tdsaDeviceData_t *oneDeviceData)
{
    static bit32 TraceIdx = 0;

    TraceData.Idx = TraceIdx;



    osti_memcpy((bit8 *)&(TraceData.Data[TraceIdx].ttdsaXchg), (bit8 *)ttdsaXchg, sizeof(ttdsaXchg_t));
    osti_memcpy((bit8 *)&(TraceData.Data[TraceIdx].oneDeviceData), (bit8 *)oneDeviceData, sizeof(tdsaDeviceData_t));





    TraceIdx++;
    if (TraceIdx >= TD_DEBUG_IO_TRACE_BUFFER_MAX)
    {
        TraceIdx = 0;
    }

    return;
}
