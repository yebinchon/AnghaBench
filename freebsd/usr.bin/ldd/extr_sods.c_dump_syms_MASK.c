#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/ * sym_base ; 
 unsigned long sym_count ; 
 char* FUNC2 (unsigned long) ; 
 scalar_t__* sym_used ; 

__attribute__((used)) static void
FUNC3(void)
{
    unsigned long i;

    FUNC1("  Symbols:\n");
    for (i = 0;  i < sym_count;  ++i) {
	FUNC1("    %6lu%c ", i, sym_used[i] ? '*' : ' ');
	FUNC0(&sym_base[i]);
	FUNC1(" %s\n", FUNC2(i));
    }
}