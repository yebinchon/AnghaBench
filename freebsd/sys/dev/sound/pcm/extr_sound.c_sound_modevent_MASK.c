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
 int ENOTSUP ; 
 int /*<<< orphan*/  INT_MAX ; 
#define  MOD_LOAD 130 
#define  MOD_SHUTDOWN 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pcmsg_unrhdr ; 

__attribute__((used)) static int
FUNC3(module_t mod, int type, void *data)
{
	int ret;
#if 0
	return (midi_modevent(mod, type, data));
#else
	ret = 0;

	switch(type) {
		case MOD_LOAD:
			pcmsg_unrhdr = FUNC2(1, INT_MAX, NULL);
			break;
		case MOD_UNLOAD:
			if (pcmsg_unrhdr != NULL) {
				FUNC0(pcmsg_unrhdr);
				pcmsg_unrhdr = NULL;
			}
			break;
		case MOD_SHUTDOWN:
			break;
		default:
			ret = ENOTSUP;
	}

	return ret;
#endif
}