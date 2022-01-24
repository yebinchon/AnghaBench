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
struct vt_device {int dummy; } ;
typedef  int phandle_t ;

/* Variables and functions */
 int CN_DEAD ; 
 int CN_INTERNAL ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int FUNC1 () ; 

__attribute__((used)) static int
FUNC2(struct vt_device *vd)
{
	phandle_t node;

	node = FUNC1();
	if (node == -1)
		return (CN_DEAD);

	if ((FUNC0(node, "height") <= 0) ||
	    (FUNC0(node, "width") <= 0) ||
	    (FUNC0(node, "depth") <= 0) ||
	    (FUNC0(node, "linebytes") <= 0))
		return (CN_DEAD);

	return (CN_INTERNAL);
}