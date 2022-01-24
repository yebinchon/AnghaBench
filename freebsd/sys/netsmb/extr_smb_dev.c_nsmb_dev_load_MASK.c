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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  smb_lock ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC8(module_t mod, int cmd, void *arg)
{
	int error = 0;

	switch (cmd) {
	    case MOD_LOAD:
		error = FUNC5();
		if (error)
			break;
		error = FUNC3();
		if (error) {
			FUNC4();
			break;
		}
		error = FUNC1();
		if (error)
			break;
		FUNC7(&smb_lock, "samba device lock");
		break;
	    case MOD_UNLOAD:
		FUNC2();
		error = FUNC4();
		if (error)
			break;
		FUNC0();
		FUNC6(&smb_lock);
		break;
	    default:
		error = EINVAL;
		break;
	}
	return error;
}