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
struct intel_gtt {int dummy; } ;
struct TYPE_2__ {struct intel_gtt base; } ;

/* Variables and functions */
 struct intel_gtt FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intel_agp ; 
 TYPE_1__ intel_private ; 

struct intel_gtt *
FUNC1(void)
{

	intel_private.base = FUNC0(intel_agp);
	return (&intel_private.base);
}