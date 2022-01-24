#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__** active_cache ; 
 int active_nr ; 
 char* FUNC1 (char const*) ; 
 int FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC6(const char *src, int length,
				   int *first_p, int *last_p)
{
	const char *src_w_slash = FUNC1(src);
	int first, last, len_w_slash = length + 1;

	first = FUNC2(src_w_slash, len_w_slash);
	if (first >= 0)
		FUNC3(FUNC0("%.*s is in index"), len_w_slash, src_w_slash);

	first = -1 - first;
	for (last = first; last < active_nr; last++) {
		const char *path = active_cache[last]->name;
		if (FUNC5(path, src_w_slash, len_w_slash))
			break;
	}
	if (src_w_slash != src)
		FUNC4((char *)src_w_slash);
	*first_p = first;
	*last_p = last;
	return last - first;
}