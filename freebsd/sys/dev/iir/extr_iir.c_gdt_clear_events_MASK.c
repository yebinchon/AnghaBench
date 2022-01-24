#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ event_source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GDT_D_MISC ; 
 TYPE_1__* ebuffer ; 
 scalar_t__ elastidx ; 
 int /*<<< orphan*/  elock ; 
 scalar_t__ eoldidx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3()
{
    FUNC0(GDT_D_MISC, ("gdt_clear_events\n"));

    FUNC1(&elock);
    eoldidx = elastidx = 0;
    ebuffer[0].event_source = 0;
    FUNC2(&elock);
}