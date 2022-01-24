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
typedef  enum deny_action { ____Placeholder_deny_action } deny_action ;

/* Variables and functions */
 int DENY_IGNORE ; 
 int DENY_REFUSE ; 
 int DENY_UPDATE_INSTEAD ; 
 int DENY_WARN ; 
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static enum deny_action FUNC2(const char *var, const char *value)
{
	if (value) {
		if (!FUNC1(value, "ignore"))
			return DENY_IGNORE;
		if (!FUNC1(value, "warn"))
			return DENY_WARN;
		if (!FUNC1(value, "refuse"))
			return DENY_REFUSE;
		if (!FUNC1(value, "updateinstead"))
			return DENY_UPDATE_INSTEAD;
	}
	if (FUNC0(var, value))
		return DENY_REFUSE;
	return DENY_IGNORE;
}