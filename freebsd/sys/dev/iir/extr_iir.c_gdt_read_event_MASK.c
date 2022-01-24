#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ event_source; } ;
typedef  TYPE_1__ gdt_evt_str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GDT_D_MISC ; 
 int GDT_MAX_EVENTS ; 
 TYPE_1__* ebuffer ; 
 int elastidx ; 
 int /*<<< orphan*/  elock ; 
 int eoldidx ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(int handle, gdt_evt_str *estr)
{
    gdt_evt_str *e;
    int eindex;
    
    FUNC0(GDT_D_MISC, ("gdt_read_event(%d)\n", handle));
    FUNC2(&elock);
    if (handle == -1)
        eindex = eoldidx;
    else
        eindex = handle;
    estr->event_source = 0;

    if (eindex >= GDT_MAX_EVENTS) {
	FUNC3(&elock);
        return eindex;
    }
    e = &ebuffer[eindex];
    if (e->event_source != 0) {
        if (eindex != elastidx) {
            if (++eindex == GDT_MAX_EVENTS)
                eindex = 0;
        } else {
            eindex = -1;
        }
        FUNC1(estr, e, sizeof(gdt_evt_str));
    }
    FUNC3(&elock);
    return eindex;
}