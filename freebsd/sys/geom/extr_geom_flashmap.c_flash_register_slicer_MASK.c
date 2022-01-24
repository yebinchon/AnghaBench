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
typedef  size_t u_int ;
typedef  int /*<<< orphan*/ * flash_slicer_t ;
struct TYPE_2__ {int /*<<< orphan*/ * slicer; } ;

/* Variables and functions */
 int TRUE ; 
 TYPE_1__* g_flashmap_slicers ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(flash_slicer_t slicer, u_int type, bool force)
{

	FUNC0();
	if (g_flashmap_slicers[type].slicer == NULL || force == TRUE)
		g_flashmap_slicers[type].slicer = slicer;
	FUNC1();
}