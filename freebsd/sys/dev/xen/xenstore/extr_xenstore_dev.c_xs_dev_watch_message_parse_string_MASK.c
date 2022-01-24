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
 char* FUNC0 (char const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC1(const char **p, const char *end,
    const char **string_r)
{
	const char *nul;

	nul = FUNC0(*p, 0, end - *p);
	if (!nul)
		return (EINVAL);

	*string_r = *p;
	*p = nul+1;

	return (0);
}