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
typedef  enum cover_from_description { ____Placeholder_cover_from_description } cover_from_description ;

/* Variables and functions */
 int COVER_FROM_AUTO ; 
 int COVER_FROM_MESSAGE ; 
 int COVER_FROM_NONE ; 
 int COVER_FROM_SUBJECT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static enum cover_from_description FUNC3(const char *arg)
{
	if (!arg || !FUNC2(arg, "default"))
		return COVER_FROM_MESSAGE;
	else if (!FUNC2(arg, "none"))
		return COVER_FROM_NONE;
	else if (!FUNC2(arg, "message"))
		return COVER_FROM_MESSAGE;
	else if (!FUNC2(arg, "subject"))
		return COVER_FROM_SUBJECT;
	else if (!FUNC2(arg, "auto"))
		return COVER_FROM_AUTO;
	else
		FUNC1(FUNC0("%s: invalid cover from description mode"), arg);
}