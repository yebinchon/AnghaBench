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
typedef  int /*<<< orphan*/ * eventhandler_tag ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_clone ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vkbd_dev_clone ; 
 int /*<<< orphan*/  vkbd_dev_clones ; 
 int /*<<< orphan*/  vkbd_kbd_driver ; 

__attribute__((used)) static int
FUNC6(module_t mod, int type, void *data)
{
	static eventhandler_tag	tag;

	switch (type) {
	case MOD_LOAD:
		FUNC3(&vkbd_dev_clones);
		tag = FUNC1(dev_clone, vkbd_dev_clone, 0, 1000);
		if (tag == NULL) {
			FUNC2(&vkbd_dev_clones);
			return (ENOMEM);
		}
		FUNC4(&vkbd_kbd_driver);
		break;

	case MOD_UNLOAD:
		FUNC5(&vkbd_kbd_driver);
		FUNC0(dev_clone, tag);
		FUNC2(&vkbd_dev_clones);
		break;

	default:
		return (EOPNOTSUPP);
	}

	return (0);
}