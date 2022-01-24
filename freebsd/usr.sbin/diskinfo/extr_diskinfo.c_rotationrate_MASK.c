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
struct TYPE_2__ {scalar_t__ u16; } ;
struct diocgattr_arg {int len; TYPE_1__ value; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGATTR ; 
 scalar_t__ DISK_RR_MAX ; 
 scalar_t__ DISK_RR_MIN ; 
 scalar_t__ DISK_RR_NON_ROTATING ; 
 scalar_t__ DISK_RR_UNKNOWN ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct diocgattr_arg*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC3(int fd, char *rate, size_t buflen)
{
	struct diocgattr_arg arg;
	int ret;

	FUNC2(arg.name, "GEOM::rotation_rate", sizeof(arg.name));
	arg.len = sizeof(arg.value.u16);

	ret = FUNC0(fd, DIOCGATTR, &arg);
	if (ret < 0 || arg.value.u16 == DISK_RR_UNKNOWN)
		FUNC1(rate, buflen, "Unknown");
	else if (arg.value.u16 == DISK_RR_NON_ROTATING)
		FUNC1(rate, buflen, "%d", 0);
	else if (arg.value.u16 >= DISK_RR_MIN && arg.value.u16 <= DISK_RR_MAX)
		FUNC1(rate, buflen, "%d", arg.value.u16);
	else
		FUNC1(rate, buflen, "Invalid");
}