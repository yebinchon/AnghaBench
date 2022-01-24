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
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int FUNC0 () ; 
 int FUNC1 () ; 

__attribute__((used)) static int
FUNC2(module_t mod, int event, void *arg)
{

	int ret = 0;

	switch (event) {

	case MOD_LOAD:
		ret = FUNC0();
		break;

	case MOD_UNLOAD:
		ret = FUNC1();
		break;

	default:
		break;
	}

        return (ret);
}