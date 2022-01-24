#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ ext_type; int /*<<< orphan*/  timer; } ;
typedef  TYPE_1__* PVBUS_EXT ;
typedef  int HPT_U32 ;

/* Variables and functions */
 scalar_t__ EXT_TYPE_VBUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SBT_1US ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  os_timer_for_ldm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

void  FUNC4(void * osext, HPT_U32 interval)
{
	PVBUS_EXT vbus_ext = osext;

	FUNC0(vbus_ext->ext_type==EXT_TYPE_VBUS);

#if (__FreeBSD_version >= 1000510)
	callout_reset_sbt(&vbus_ext->timer, SBT_1US * interval, 0,
	    os_timer_for_ldm, vbus_ext, 0);
#else 
	FUNC3(os_timer_for_ldm, vbus_ext, vbus_ext->timer);
	vbus_ext->timer = FUNC2(os_timer_for_ldm, vbus_ext, interval * hz / 1000000);
#endif
}