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
struct bhnd_nvram_data {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct bhnd_nvram_data*,void**) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 

void *
FUNC2(struct bhnd_nvram_data *nv, const char *name)
{
	const char	*next;
	void		*cookiep;

	cookiep = NULL;
	while ((next = FUNC0(nv, &cookiep))) {
		if (FUNC1(name, next) == 0)
			return (cookiep);
	}

	/* Not found */
	return (NULL);
}