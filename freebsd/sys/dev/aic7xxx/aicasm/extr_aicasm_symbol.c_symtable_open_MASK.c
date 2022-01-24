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
 int /*<<< orphan*/  DB_HASH ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int O_CREAT ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * symtable ; 

void
FUNC3(void)
{
	symtable = FUNC0(/*filename*/NULL,
			  O_CREAT | O_NONBLOCK | O_RDWR, /*mode*/0, DB_HASH,
			  /*openinfo*/NULL);

	if (symtable == NULL) {
		FUNC2("Symbol table creation failed");
		FUNC1(EX_SOFTWARE);
		/* NOTREACHED */
	}
}