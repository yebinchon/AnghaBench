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
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 TYPE_1__* domains ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2()
{
	int i;

	FUNC1("\nRegulatory domains:\n\n");
	for (i = 0; i < FUNC0(domains); i++)
		FUNC1("%-15s%s", domains[i].name,
			((i+1)%5) == 0 ? "\n" : "");
	FUNC1("\n");
}