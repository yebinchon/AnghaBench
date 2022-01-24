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
struct bhnd_nvram_prop {int refs; int /*<<< orphan*/ * val; struct bhnd_nvram_prop* name; } ;
typedef  int /*<<< orphan*/  bhnd_nvram_val ;

/* Variables and functions */
 struct bhnd_nvram_prop* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_nvram_prop*) ; 
 struct bhnd_nvram_prop* FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct bhnd_nvram_prop *
FUNC5(const char *name, bhnd_nvram_val *val)
{
	struct bhnd_nvram_prop *prop;

	prop = FUNC0(1, sizeof(*prop));
	if (prop == NULL)
		return NULL;

	/* Implicit caller-owned reference */
	prop->refs = 1;

	if ((prop->name = FUNC2(name)) == NULL)
		goto failed;

	if ((prop->val = FUNC3(val)) == NULL)
		goto failed;

	return (prop);

failed:
	if (prop->name != NULL)
		FUNC1(prop->name);

	if (prop->val != NULL)
		FUNC4(prop->val);

	FUNC1(prop);
	return (NULL);
}