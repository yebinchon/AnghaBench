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
typedef  scalar_t__ id_t ;

/* Variables and functions */
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (char const*,char**,int) ; 

__attribute__((used)) static int
FUNC1(const char *name, id_t *id)
{
	char	*ep;
	errno = 0;
	*id = (id_t)FUNC0(name, &ep, 10);
	if (errno || *ep != '\0')
		return (0);
	return (1);
}