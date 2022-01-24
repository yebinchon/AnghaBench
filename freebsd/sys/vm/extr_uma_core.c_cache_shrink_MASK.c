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
typedef  TYPE_1__* uma_zone_t ;
struct TYPE_5__ {int uz_flags; int uz_count; int uz_count_min; } ;

/* Variables and functions */
 int UMA_ZFLAG_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(uma_zone_t zone)
{

	if (zone->uz_flags & UMA_ZFLAG_INTERNAL)
		return;

	FUNC0(zone);
	zone->uz_count = (zone->uz_count_min + zone->uz_count) / 2;
	FUNC1(zone);
}