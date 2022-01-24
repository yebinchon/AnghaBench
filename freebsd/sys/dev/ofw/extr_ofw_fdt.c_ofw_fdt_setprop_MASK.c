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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  ofw_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,char const*,void const*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,char const*,void const*,size_t) ; 
 int /*<<< orphan*/  fdtp ; 

__attribute__((used)) static int
FUNC3(ofw_t ofw, phandle_t package, const char *propname,
    const void *buf, size_t len)
{
	int offset;

	offset = FUNC0(package);
	if (offset < 0)
		return (-1);

	if (FUNC2(fdtp, offset, propname, buf, len) != 0)
		/* Try to add property, when setting value inplace failed */
		return (FUNC1(fdtp, offset, propname, buf, len));

	return (0);
}