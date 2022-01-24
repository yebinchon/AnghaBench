#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ttdsaXchg_t ;
typedef  int /*<<< orphan*/  tdsaDeviceData_t ;
typedef  int /*<<< orphan*/  bit8 ;
typedef  size_t bit32 ;
struct TYPE_4__ {size_t Idx; TYPE_1__* Data; } ;
struct TYPE_3__ {int /*<<< orphan*/ * oneDeviceData; int /*<<< orphan*/ * ttdsaXchg; int /*<<< orphan*/  Time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t TD_DEBUG_IO_TRACE_BUFFER_MAX ; 
 TYPE_2__ TraceData ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC2(ttdsaXchg_t *ttdsaXchg, tdsaDeviceData_t  *oneDeviceData)
{
    static bit32 TraceIdx = 0;

    TraceData.Idx = TraceIdx;
#ifdef REMOVED
    TraceData.Data[TraceIdx].Time = GetHiResTimeStamp();
#endif
    FUNC1((bit8 *)&(TraceData.Data[TraceIdx].ttdsaXchg), (bit8 *)ttdsaXchg, sizeof(ttdsaXchg_t));
    FUNC1((bit8 *)&(TraceData.Data[TraceIdx].oneDeviceData), (bit8 *)oneDeviceData, sizeof(tdsaDeviceData_t));
#ifdef REMOVED
    TraceData.Data[TraceIdx].ttdsaXchg = ttdsaXchg;
    TraceData.Data[TraceIdx].oneDeviceData = oneDeviceData;
#endif

    TraceIdx++;
    if (TraceIdx >= TD_DEBUG_IO_TRACE_BUFFER_MAX)
    {
        TraceIdx = 0;
    }

    return;
}