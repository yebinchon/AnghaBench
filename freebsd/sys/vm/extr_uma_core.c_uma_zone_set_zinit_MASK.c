#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* uma_zone_t ;
typedef  int /*<<< orphan*/  uma_init ;
struct TYPE_7__ {int /*<<< orphan*/  uz_init; TYPE_1__* uz_keg; } ;
struct TYPE_6__ {scalar_t__ uk_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void
FUNC3(uma_zone_t zone, uma_init zinit)
{

	FUNC1(zone);
	FUNC0(zone->uz_keg->uk_pages == 0,
	    ("uma_zone_set_zinit on non-empty keg"));
	zone->uz_init = zinit;
	FUNC2(zone);
}