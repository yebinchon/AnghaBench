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
struct TYPE_2__ {char* name; char* desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* debugs ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(int argc, char *argv[])
{
	int i;

	if (argc != 1) {
		i = 1;
		while (i < argc)
			debug ^= FUNC0(argv[i++]);
	}
	FUNC2("The following debugging is enabled: %s\n", FUNC1(debug));

	FUNC2("\nThe following debugs are available:\n");
	i = 0;
	while (debugs[i].name != NULL) {
		FUNC2("\t%s\t%s\n", debugs[i].name, debugs[i].desc);
		i++;
	}
}