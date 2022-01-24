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
typedef  int /*<<< orphan*/  uma_zone_t ;
typedef  TYPE_1__* uma_keg_t ;
typedef  int /*<<< orphan*/  uma_fini ;
struct TYPE_5__ {scalar_t__ uk_pages; int /*<<< orphan*/  uk_fini; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(uma_zone_t zone, uma_fini fini)
{
	uma_keg_t keg;

	FUNC1(zone, keg);
	FUNC2(keg);
	FUNC0(keg->uk_pages == 0,
	    ("uma_zone_set_fini on non-empty keg"));
	keg->uk_fini = fini;
	FUNC3(keg);
}