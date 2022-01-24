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
 char* FUNC0 (char const*,int,char const*,int) ; 
 char* FUNC1 (char*,char) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static const char *FUNC3(const char *begin, const char *end)
{
	const char *needle = "\nencoding ";
	char *bol, *eol;

	bol = FUNC0(begin, end ? end - begin : FUNC2(begin),
		     needle, FUNC2(needle));
	if (!bol)
		return NULL;
	bol += FUNC2(needle);
	eol = FUNC1(bol, '\n');
	*eol = '\0';
	return bol;
}