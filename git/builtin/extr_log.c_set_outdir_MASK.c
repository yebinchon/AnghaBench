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

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int outdir_offset ; 
 char const* FUNC1 (char const*,char const*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static const char *FUNC3(const char *prefix, const char *output_directory)
{
	if (output_directory && FUNC0(output_directory))
		return output_directory;

	if (!prefix || !*prefix) {
		if (output_directory)
			return output_directory;
		/* The user did not explicitly ask for "./" */
		outdir_offset = 2;
		return "./";
	}

	outdir_offset = FUNC2(prefix);
	if (!output_directory)
		return prefix;

	return FUNC1(prefix, output_directory);
}