#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int refs; struct TYPE_4__* name; int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ bhnd_nvram_prop ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

void
FUNC4(bhnd_nvram_prop *prop)
{
	FUNC0(prop->refs >= 1, ("prop over-released"));

	/* Drop reference */
	if (!FUNC3(&prop->refs))
		return;

	/* Free property data */
	FUNC2(prop->val);
	FUNC1(prop->name);
	FUNC1(prop);
}