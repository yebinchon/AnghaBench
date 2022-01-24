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
struct patch {scalar_t__* new_oid_prefix; scalar_t__* old_oid_prefix; } ;
struct gitdiff_data {int dummy; } ;
struct TYPE_2__ {unsigned int hexsz; } ;

/* Variables and functions */
 int FUNC0 (struct gitdiff_data*,char const*,struct patch*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,char const*,int) ; 
 char* FUNC2 (char const*,char) ; 
 char* FUNC3 (char const*,char) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static int FUNC4(struct gitdiff_data *state,
			 const char *line,
			 struct patch *patch)
{
	/*
	 * index line is N hexadecimal, "..", N hexadecimal,
	 * and optional space with octal mode.
	 */
	const char *ptr, *eol;
	int len;
	const unsigned hexsz = the_hash_algo->hexsz;

	ptr = FUNC2(line, '.');
	if (!ptr || ptr[1] != '.' || hexsz < ptr - line)
		return 0;
	len = ptr - line;
	FUNC1(patch->old_oid_prefix, line, len);
	patch->old_oid_prefix[len] = 0;

	line = ptr + 2;
	ptr = FUNC2(line, ' ');
	eol = FUNC3(line, '\n');

	if (!ptr || eol < ptr)
		ptr = eol;
	len = ptr - line;

	if (hexsz < len)
		return 0;
	FUNC1(patch->new_oid_prefix, line, len);
	patch->new_oid_prefix[len] = 0;
	if (*ptr == ' ')
		return FUNC0(state, ptr + 1, patch);
	return 0;
}