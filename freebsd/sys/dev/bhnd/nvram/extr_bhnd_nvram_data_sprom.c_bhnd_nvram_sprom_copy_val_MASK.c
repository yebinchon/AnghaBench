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
typedef  union bhnd_nvram_sprom_storage {int dummy; } bhnd_nvram_sprom_storage ;
struct bhnd_nvram_data {int dummy; } ;
typedef  int /*<<< orphan*/  bhnd_nvram_val ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct bhnd_nvram_data*,void*,union bhnd_nvram_sprom_storage*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct bhnd_nvram_data *nv, void *cookiep,
    bhnd_nvram_val **value)
{
	bhnd_nvram_val			val;
	union bhnd_nvram_sprom_storage	storage;
	int				error;

	/* Decode variable to a new value instance */
	error = FUNC0(nv, cookiep, &storage, &val);
	if (error)
		return (error);

	/* Attempt to copy to heap */
	*value = FUNC1(&val);
	FUNC2(&val);

	if (*value == NULL)
		return (ENOMEM);

	return (0);
}