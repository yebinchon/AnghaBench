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
 int EINVAL ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  iconv_lock ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC2(module_t mod, int type, void *data)
{
	int error;

	switch (type) {
	    case MOD_LOAD:
		error = 0;
		FUNC1(&iconv_lock, "iconv");
		break;
	    case MOD_UNLOAD:
		error = FUNC0();
		break;
	    default:
		error = EINVAL;
	}
	return error;
}