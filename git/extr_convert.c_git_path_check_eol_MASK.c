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
struct attr_check_item {char* value; } ;
typedef  enum eol { ____Placeholder_eol } eol ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int EOL_CRLF ; 
 int EOL_LF ; 
 int EOL_UNSET ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static enum eol FUNC2(struct attr_check_item *check)
{
	const char *value = check->value;

	if (FUNC0(value))
		;
	else if (!FUNC1(value, "lf"))
		return EOL_LF;
	else if (!FUNC1(value, "crlf"))
		return EOL_CRLF;
	return EOL_UNSET;
}