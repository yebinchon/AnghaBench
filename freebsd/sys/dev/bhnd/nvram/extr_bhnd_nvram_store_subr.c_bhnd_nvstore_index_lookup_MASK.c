#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct bhnd_nvram_store {int data_caps; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int count; void** cookiep; } ;
typedef  TYPE_1__ bhnd_nvstore_index ;

/* Variables and functions */
 int BHND_NVRAM_DATA_CAP_DEVPATHS ; 
 int /*<<< orphan*/  FUNC0 (struct bhnd_nvram_store*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 char* FUNC2 (int /*<<< orphan*/ ,void*) ; 
 char* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 

void *
FUNC5(struct bhnd_nvram_store *sc,
    bhnd_nvstore_index *index, const char *name)
{
	void		*cookiep;
	const char	*indexed_name;
	size_t		 min, mid, max;
	uint32_t	 data_caps;
	int		 order;

	FUNC0(sc, MA_OWNED);
	FUNC1(index != NULL, ("NULL index"));

	/*
	 * Locate the requested variable using a binary search.
	 */
	if (index->count == 0)
		return (NULL);

	data_caps = sc->data_caps;
	min = 0;
	max = index->count - 1;

	while (max >= min) {
		/* Select midpoint */
		mid = (min + max) / 2;
		cookiep = index->cookiep[mid];

		/* Fetch variable name */
		indexed_name = FUNC2(sc->data, cookiep);

		/* Trim any path prefix */
		if (data_caps & BHND_NVRAM_DATA_CAP_DEVPATHS)
			indexed_name = FUNC3(indexed_name);

		/* Determine which side of the partition to search */
		order = FUNC4(indexed_name, name);
		if (order < 0) {
			/* Search upper partition */
			min = mid + 1;
		} else if (order > 0) {
			/* Search (non-empty) lower partition */
			if (mid == 0)
				break;
			max = mid - 1;
		} else if (order == 0) {
			size_t	idx;

			/*
			 * Match found.
			 * 
			 * If this happens to be a key with multiple definitions
			 * in the backing store, we need to find the entry with
			 * the highest declaration precedence.
			 * 
			 * Duplicates are sorted in order of descending
			 * precedence; to find the highest precedence entry,
			 * we search backwards through the index.
			 */
			idx = mid;
			while (idx > 0) {
				void		*dup_cookiep;
				const char	*dup_name;

				/* Fetch preceding index entry */
				idx--;
				dup_cookiep = index->cookiep[idx];
				dup_name = FUNC2(sc->data,
				    dup_cookiep);

				/* Trim any path prefix */
				if (data_caps & BHND_NVRAM_DATA_CAP_DEVPATHS) {
					dup_name = FUNC3(
					    dup_name);
				}

				/* If no match, current cookiep is the variable
				 * definition with the highest precedence */
				if (FUNC4(indexed_name, dup_name) != 0)
					return (cookiep);

				/* Otherwise, prefer this earlier definition,
				 * and keep searching for a higher-precedence
				 * definitions */
				cookiep = dup_cookiep;
			}

			return (cookiep);
		}
	}

	/* Not found */
	return (NULL);
}