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
struct TYPE_2__ {int command_mask; int quirks; } ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int KBDC_QUIRK_KEEP_ACTIVATED ; 
 int KBD_AUX_CONTROL_BITS ; 
 int KBD_KBD_CONTROL_BITS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(KBDC p, int mask)
{
    FUNC0(p)->command_mask = 
	mask & (((FUNC0(p)->quirks & KBDC_QUIRK_KEEP_ACTIVATED)
	    ? 0 : KBD_KBD_CONTROL_BITS) | KBD_AUX_CONTROL_BITS);
}