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
typedef  long id_t ;

/* Variables and functions */
 long FUNC0 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static id_t
FUNC3(char *id)
{
	static bool first = true;
	long value;
	char *ch;

	if (!first) {
		FUNC2("only one -g or -p flag is permitted");
		FUNC1();
	}
	value = FUNC0(id, &ch, 0);
	if (*ch != '\0') {
		FUNC2("invalid process id");
		FUNC1();
	}
	return (value);
}