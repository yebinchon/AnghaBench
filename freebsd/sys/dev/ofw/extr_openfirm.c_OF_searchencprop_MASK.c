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
typedef  int ssize_t ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__,char const*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

ssize_t
FUNC2(phandle_t node, const char *propname, pcell_t *buf, size_t len)
{
	ssize_t rv;

	for (; node != 0; node = FUNC1(node))
		if ((rv = FUNC0(node, propname, buf, len)) != -1)
			return (rv);
	return (-1);
}