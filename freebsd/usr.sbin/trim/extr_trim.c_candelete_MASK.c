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
struct TYPE_2__ {scalar_t__ i; } ;
struct diocgattr_arg {int len; TYPE_1__ value; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGATTR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct diocgattr_arg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static bool
FUNC2(int fd)
{
	struct diocgattr_arg arg;

	FUNC1(arg.name, "GEOM::candelete", sizeof(arg.name));
	arg.len = sizeof(arg.value.i);
	if (FUNC0(fd, DIOCGATTR, &arg) == 0)
		return (arg.value.i != 0);
	else
		return (false);
}