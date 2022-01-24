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

/* Variables and functions */
 int EINVAL ; 
 int ENAMETOOLONG ; 
 scalar_t__ EXT2_EXTATTR_NAMELEN_MAX ; 
 int EXTATTR_NAMESPACE_EMPTY ; 
 scalar_t__ FUNC0 (char const*) ; 

int
FUNC1(int attrnamespace, const char *attrname)
{
	if (attrnamespace == EXTATTR_NAMESPACE_EMPTY)
		return (EINVAL);

	if (FUNC0(attrname) == 0)
		return (EINVAL);

	if (FUNC0(attrname) + 1 > EXT2_EXTATTR_NAMELEN_MAX)
		return (ENAMETOOLONG);

	return (0);
}