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
#define  MOD_LOAD 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drm_debug ; 
 int /*<<< orphan*/  drm_notyet ; 

__attribute__((used)) static int
FUNC1(module_t mod, int type, void *data)
{

	switch (type) {
	case MOD_LOAD:
		FUNC0("drm.debug", &drm_debug);
		FUNC0("drm.notyet", &drm_notyet);
		break;
	}
	return (0);
}