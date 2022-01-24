#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
typedef  int /*<<< orphan*/  i ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_SETFIB ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,int,...) ; 
 int rt_numfibs ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 char* FUNC2 (scalar_t__) ; 
 TYPE_2__* t_dom ; 
 TYPE_1__* t_type ; 
 int testno ; 

__attribute__((used)) static void
FUNC3(int s, int i, u_int dom, u_int type)
{
	int error;

	error = FUNC1(s, SOL_SOCKET, SO_SETFIB, &i, sizeof(i));
	/* For out of bounds we expect an error. */
	if (error == -1 && (i < 0 || i > rt_numfibs))
		FUNC0("ok %d %s_%s_%d\n", testno, t_dom[dom].name,
		    t_type[type].name, i);
	else if (error != -1 && (i < 0 || i > rt_numfibs))
		FUNC0("not ok %d %s_%s_%d # setsockopt(%d, SOL_SOCKET, "
		    "SO_SETFIB, %d, ..) unexpectedly succeeded\n", testno,
		    t_dom[dom].name, t_type[type].name, i, s, i);
	else if (error == 0)
		FUNC0("ok %d %s_%s_%d\n", testno, t_dom[dom].name,
		    t_type[type].name, i);
	else if (errno != EINVAL)
		FUNC0("not ok %d %s_%s_%d # setsockopt(%d, SOL_SOCKET, "
		    "SO_SETFIB, %d, ..) unexpected error: %s\n", testno,
		    t_dom[dom].name, t_type[type].name, i, s, i,
		    FUNC2(errno));
	else
		FUNC0("not ok %d %s_%s_%d\n", testno, t_dom[dom].name,
		    t_type[type].name, i);

	/* Test run done, next please. */
	testno++;
}