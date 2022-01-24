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
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int 
FUNC3(module_t mod, int /*modeventtype_t*/ what,
                            void *arg)
{
	switch (what) {
		case MOD_LOAD:
			FUNC1();
			FUNC2("kthrdlk loaded!\n");
			return (0);
		case MOD_UNLOAD:
			FUNC0();
			FUNC2("Bye Bye! kthrdlk unloaded!\n");
			return (0);
	}

	return (EOPNOTSUPP);
}