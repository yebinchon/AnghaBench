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
struct bhnd_nvram_io {int dummy; } ;
struct bhnd_nvram_data {int dummy; } ;
typedef  int /*<<< orphan*/  bhnd_nvram_data_class ;

/* Variables and functions */
 int BHND_NVRAM_DATA_PROBE_MAYBE ; 
 int BHND_NVRAM_DATA_PROBE_SPECIFIC ; 
 int ENXIO ; 
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bhnd_nvram_data_class_set ; 
 int FUNC2 (int /*<<< orphan*/ *,struct bhnd_nvram_data**,struct bhnd_nvram_io*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct bhnd_nvram_io*) ; 
 int /*<<< orphan*/  FUNC4 (struct bhnd_nvram_data*) ; 

int
FUNC5(struct bhnd_nvram_data **data,
    struct bhnd_nvram_io *io, bhnd_nvram_data_class *classes[],
    size_t num_classes)
{
	bhnd_nvram_data_class	*cls;
	int			 error, prio, result;

	cls = NULL;
	prio = 0;
	*data = NULL;

	/* If class array is NULL, default to our linker set */
	if (classes == NULL) {
		classes = FUNC0(bhnd_nvram_data_class_set);
		num_classes = FUNC1(bhnd_nvram_data_class_set);
	}

	/* Try to find the best data class capable of parsing io */
	for (size_t i = 0; i < num_classes; i++) {
		bhnd_nvram_data_class *next_cls;

		next_cls = classes[i];

		/* Try to probe */
		result = FUNC3(next_cls, io);

		/* The parser did not match if an error was returned */
		if (result > 0)
			continue;

		/* Lower priority than previous match; keep
		 * searching */
		if (cls != NULL && result <= prio)
			continue;

		/* Drop any previously parsed data */
		if (*data != NULL) {
			FUNC4(*data);
			*data = NULL;
		}

		/* If this is a 'maybe' match, attempt actual parsing to
		 * verify that this does in fact match */
		if (result <= BHND_NVRAM_DATA_PROBE_MAYBE) {
			/* If parsing fails, keep searching */
			error = FUNC2(next_cls, data, io);
			if (error)
				continue;
		}

		/* Record best new match */
		prio = result;
		cls = next_cls;


		/* Terminate search immediately on
		 * BHND_NVRAM_DATA_PROBE_SPECIFIC */
		if (result == BHND_NVRAM_DATA_PROBE_SPECIFIC)
			break;
	}

	/* If no match, return error */
	if (cls == NULL)
		return (ENXIO);

	/* If the NVRAM data was not parsed above, do so now */
	if (*data == NULL) {
		if ((error = FUNC2(cls, data, io)))
			return (error);
	}

	return (0);
}