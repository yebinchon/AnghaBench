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
struct module {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  MOD_LOAD 129 
#define  MOD_SHUTDOWN 128 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static int
FUNC1(struct module *module, int cmd, void *arg)
{
	int error = 0;

	switch (cmd) {
	case MOD_LOAD:
		FUNC0();
		break;
	case MOD_SHUTDOWN:
		break;
	default:
		error = EOPNOTSUPP;
		break;
	}
	return (error);
}