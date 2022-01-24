#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* isoName; char* name; } ;

/* Variables and functions */
 TYPE_1__* allCountries ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2()
{
	int i;

	FUNC1("\nCountry codes:\n");
	for (i = 0; i < FUNC0(allCountries); i++)
		FUNC1("%2s %-15.15s%s",
			allCountries[i].isoName,
			allCountries[i].name,
			((i+1)%4) == 0 ? "\n" : " ");
	FUNC1("\n");
}