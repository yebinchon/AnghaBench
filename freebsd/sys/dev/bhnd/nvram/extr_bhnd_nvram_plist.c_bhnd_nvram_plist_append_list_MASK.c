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
typedef  int /*<<< orphan*/  bhnd_nvram_prop ;
typedef  int /*<<< orphan*/  bhnd_nvram_plist ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC2(bhnd_nvram_plist *plist, bhnd_nvram_plist *tail)
{
	bhnd_nvram_prop	*p;
	int		 error;

	p = NULL;
	while ((p = FUNC1(tail, p)) != NULL) {
		if ((error = FUNC0(plist, p)))
			return (error);
	}

	return (0);
}