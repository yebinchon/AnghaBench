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
typedef  int /*<<< orphan*/  bhnd_nvram_val ;
typedef  int /*<<< orphan*/  bhnd_nvram_prop ;
typedef  int /*<<< orphan*/  bhnd_nvram_plist ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(bhnd_nvram_plist *plist, const char *name,
    bhnd_nvram_val *val)
{
	bhnd_nvram_prop	*prop;
	int		 error;

	if ((prop = FUNC1(name, val)) == NULL)
		return (ENOMEM);

	error = FUNC0(plist, prop);
	FUNC2(prop);

	return (error);
}