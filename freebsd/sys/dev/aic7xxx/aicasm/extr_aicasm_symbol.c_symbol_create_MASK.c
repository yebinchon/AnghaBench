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
struct TYPE_4__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ symbol_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 

__attribute__((used)) static symbol_t *
FUNC6(const char *name)
{
	symbol_t *new_symbol;

	new_symbol = (symbol_t *)FUNC1(sizeof(symbol_t));
	if (new_symbol == NULL) {
		FUNC3("Unable to create new symbol");
		FUNC0(EX_SOFTWARE);
	}
	FUNC2(new_symbol, 0, sizeof(*new_symbol));
	new_symbol->name = FUNC5(name);
	if (new_symbol->name == NULL)
		 FUNC4("Unable to strdup symbol name", EX_SOFTWARE);
	new_symbol->type = UNINITIALIZED;
	return (new_symbol);
}