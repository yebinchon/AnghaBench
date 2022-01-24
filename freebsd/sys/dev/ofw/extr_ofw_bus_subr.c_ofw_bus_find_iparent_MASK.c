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
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  iparent ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,char*,scalar_t__*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

phandle_t
FUNC4(phandle_t node)
{
	phandle_t iparent;

	if (FUNC2(node, "interrupt-parent", &iparent,
		    sizeof(iparent)) == -1) {
		for (iparent = node; iparent != 0;
		    iparent = FUNC1(iparent)) {
			if (FUNC0(iparent, "interrupt-controller"))
				break;
		}
		iparent = FUNC3(iparent);
	}
	return (iparent);
}