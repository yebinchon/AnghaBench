#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbol_t ;
typedef  int /*<<< orphan*/  stored_ptr ;
typedef  int /*<<< orphan*/  new_symbol ;
struct TYPE_10__ {int (* get ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ;scalar_t__ (* put ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {int size; int /*<<< orphan*/ ** data; } ;
typedef  TYPE_1__ DBT ;

/* Variables and functions */
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ ** FUNC4 (char const*) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 TYPE_2__* symtable ; 

symbol_t *
FUNC9(const char *name)
{
	symbol_t *stored_ptr;
	DBT	  key;
	DBT	  data;
	int	  retval;

	key.data = FUNC4(name);
	key.size = FUNC5(name);

	if ((retval = symtable->get(symtable, &key, &data, /*flags*/0)) != 0) {
		if (retval == -1) {
			FUNC3("Symbol table get operation failed");
			FUNC0(EX_SOFTWARE);
			/* NOTREACHED */
		} else if (retval == 1) {
			/* Symbol wasn't found, so create a new one */
			symbol_t *new_symbol;

			new_symbol = FUNC8(name);
			data.data = &new_symbol;
			data.size = sizeof(new_symbol);
			if (symtable->put(symtable, &key, &data,
					  /*flags*/0) !=0) {
				FUNC3("Symtable put failed");
				FUNC0(EX_SOFTWARE);
			}
			FUNC1(key.data);
			return (new_symbol);
		} else {
			FUNC3("Unexpected return value from db get routine");
			FUNC0(EX_SOFTWARE);
			/* NOTREACHED */
		}
	}
	FUNC2(&stored_ptr, data.data, sizeof(stored_ptr));
	FUNC1(key.data);
	return (stored_ptr);
}