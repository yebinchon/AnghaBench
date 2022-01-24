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
struct config_alias_data {char const* member_0; char* v; int /*<<< orphan*/ * member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  config_alias_cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct config_alias_data*) ; 

char *FUNC1(const char *alias)
{
	struct config_alias_data data = { alias, NULL };

	FUNC0(config_alias_cb, &data);

	return data.v;
}