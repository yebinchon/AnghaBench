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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

bhnd_nvram_plist *
FUNC5(bhnd_nvram_plist *plist)
{
	bhnd_nvram_plist	*copy;
	bhnd_nvram_prop		*prop;
	int			 error;

	/* Allocate new, empty plist */
	if ((copy = FUNC2()) == NULL)
		return (NULL);

	/* Append all properties */
	prop = NULL;
	while ((prop = FUNC3(plist, prop)) != NULL) {
		error = FUNC1(copy, prop);
		if (error) {
			if (error != ENOMEM) {
				FUNC0("error copying property: %d\n",
				    error);
			}

			FUNC4(copy);
			return (NULL);
		}
	}

	/* Return ownership of the copy to our caller */
	return (copy);
}