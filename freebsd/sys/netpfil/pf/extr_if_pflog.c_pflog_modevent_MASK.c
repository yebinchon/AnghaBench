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
 int /*<<< orphan*/ * pflog_packet ; 
 int /*<<< orphan*/ * pflog_packet_ptr ; 

__attribute__((used)) static int
FUNC2(module_t mod, int type, void *data)
{
	int error = 0;

	switch (type) {
	case MOD_LOAD:
		FUNC0();
		pflog_packet_ptr = pflog_packet;
		FUNC1();
		break;
	case MOD_UNLOAD:
		FUNC0();
		pflog_packet_ptr = NULL;
		FUNC1();
		break;
	default:
		error = EOPNOTSUPP;
		break;
	}

	return error;
}