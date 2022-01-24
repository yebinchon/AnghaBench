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
typedef  int /*<<< orphan*/  uma_alloc ;
struct TYPE_5__ {int /*<<< orphan*/  uk_allocf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3(uma_zone_t zone, uma_alloc allocf)
{
	uma_keg_t keg;

	FUNC0(zone, keg);
	FUNC1(keg);
	keg->uk_allocf = allocf;
	FUNC2(keg);
}