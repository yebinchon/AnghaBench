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
struct option {scalar_t__ value; } ;
typedef  enum wt_status_format { ____Placeholder_wt_status_format } wt_status_format ;

/* Variables and functions */
 int STATUS_FORMAT_NONE ; 
 int STATUS_FORMAT_PORCELAIN ; 
 int STATUS_FORMAT_PORCELAIN_V2 ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2(const struct option *opt, const char *arg, int unset)
{
	enum wt_status_format *value = (enum wt_status_format *)opt->value;
	if (unset)
		*value = STATUS_FORMAT_NONE;
	else if (!arg)
		*value = STATUS_FORMAT_PORCELAIN;
	else if (!FUNC1(arg, "v1") || !FUNC1(arg, "1"))
		*value = STATUS_FORMAT_PORCELAIN;
	else if (!FUNC1(arg, "v2") || !FUNC1(arg, "2"))
		*value = STATUS_FORMAT_PORCELAIN_V2;
	else
		FUNC0("unsupported porcelain version '%s'", arg);

	return 0;
}