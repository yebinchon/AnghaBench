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
struct fingerprint_entry {int count; int /*<<< orphan*/  entry; } ;
struct fingerprint {int /*<<< orphan*/  map; struct fingerprint_entry* entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 struct fingerprint_entry* FUNC2 (int /*<<< orphan*/ *,struct fingerprint_entry*,struct fingerprint_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (char const) ; 
 unsigned int FUNC5 (char const) ; 
 struct fingerprint_entry* FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct fingerprint *result,
			    const char *line_begin,
			    const char *line_end)
{
	unsigned int hash, c0 = 0, c1;
	const char *p;
	int max_map_entry_count = 1 + line_end - line_begin;
	struct fingerprint_entry *entry = FUNC6(max_map_entry_count,
		sizeof(struct fingerprint_entry));
	struct fingerprint_entry *found_entry;

	FUNC3(&result->map, NULL, NULL, max_map_entry_count);
	result->entries = entry;
	for (p = line_begin; p <= line_end; ++p, c0 = c1) {
		/* Always terminate the string with whitespace.
		 * Normalise whitespace to 0, and normalise letters to
		 * lower case. This won't work for multibyte characters but at
		 * worst will match some unrelated characters.
		 */
		if ((p == line_end) || FUNC4(*p))
			c1 = 0;
		else
			c1 = FUNC5(*p);
		hash = c0 | (c1 << 8);
		/* Ignore whitespace pairs */
		if (hash == 0)
			continue;
		FUNC1(&entry->entry, hash);

		found_entry = FUNC2(&result->map, entry,
						/* member name */ entry, NULL);
		if (found_entry) {
			found_entry->count += 1;
		} else {
			entry->count = 1;
			FUNC0(&result->map, &entry->entry);
			++entry;
		}
	}
}