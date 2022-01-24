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
typedef  int /*<<< orphan*/  timestamp_t ;
struct ident_split {char* date_end; int /*<<< orphan*/  date_begin; } ;
struct commit {int dummy; } ;
struct author_date_slab {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct author_date_slab*,struct commit*) ; 
 char* FUNC1 (char const*,char*,size_t*) ; 
 char* FUNC2 (struct commit*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char**,int) ; 
 scalar_t__ FUNC4 (struct ident_split*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct commit*,char const*) ; 

void FUNC6(struct author_date_slab *author_date,
			struct commit *commit)
{
	const char *buffer = FUNC2(commit, NULL);
	struct ident_split ident;
	const char *ident_line;
	size_t ident_len;
	char *date_end;
	timestamp_t date;

	ident_line = FUNC1(buffer, "author", &ident_len);
	if (!ident_line)
		goto fail_exit; /* no author line */
	if (FUNC4(&ident, ident_line, ident_len) ||
	    !ident.date_begin || !ident.date_end)
		goto fail_exit; /* malformed "author" line */

	date = FUNC3(ident.date_begin, &date_end, 10);
	if (date_end != ident.date_end)
		goto fail_exit; /* malformed date */
	*(FUNC0(author_date, commit)) = date;

fail_exit:
	FUNC5(commit, buffer);
}