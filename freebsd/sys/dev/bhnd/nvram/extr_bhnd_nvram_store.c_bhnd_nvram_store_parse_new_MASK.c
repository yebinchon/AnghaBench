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
struct bhnd_nvram_store {int dummy; } ;
struct bhnd_nvram_io {int dummy; } ;
struct bhnd_nvram_data {int dummy; } ;
typedef  int /*<<< orphan*/  bhnd_nvram_data_class ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct bhnd_nvram_data**,struct bhnd_nvram_io*) ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_nvram_data*) ; 
 int FUNC2 (struct bhnd_nvram_store**,struct bhnd_nvram_data*) ; 

int
FUNC3(struct bhnd_nvram_store **store,
    struct bhnd_nvram_io *io, bhnd_nvram_data_class *cls)
{
	struct bhnd_nvram_data	*data;
	int			 error;


	/* Try to parse the data */
	if ((error = FUNC0(cls, &data, io)))
		return (error);

	/* Try to create our new store instance */
	error = FUNC2(store, data);
	FUNC1(data);

	return (error);
}