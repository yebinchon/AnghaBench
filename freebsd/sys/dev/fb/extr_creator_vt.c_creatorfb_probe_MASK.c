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
typedef  int /*<<< orphan*/  type ;
struct vt_device {int dummy; } ;
typedef  int /*<<< orphan*/  stdout ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  name ;
typedef  char ihandle_t ;

/* Variables and functions */
 int CN_DEAD ; 
 int CN_INTERNAL ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,int) ; 
 int FUNC2 (char) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static int
FUNC4(struct vt_device *vd)
{
	phandle_t chosen, node;
	ihandle_t stdout;
	char type[64], name[64];

	chosen = FUNC0("/chosen");
	FUNC1(chosen, "stdout", &stdout, sizeof(stdout));
	node = FUNC2(stdout);
	if (node == -1) {
		/*
		 * The "/chosen/stdout" does not exist try
		 * using "screen" directly.
		 */
		node = FUNC0("screen");
	}
	FUNC1(node, "device_type", type, sizeof(type));
	if (FUNC3(type, "display") != 0)
		return (CN_DEAD);

	FUNC1(node, "name", name, sizeof(name));
	if (FUNC3(name, "SUNW,ffb") != 0 && FUNC3(name, "SUNW,afb") != 0)
		return (CN_DEAD);

	/* Looks OK... */
	return (CN_INTERNAL);
}