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
struct psycho_desc {int /*<<< orphan*/ * pd_string; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static const struct psycho_desc *
FUNC1(const struct psycho_desc *table, const char *string)
{
	const struct psycho_desc *desc;

	if (string == NULL)
		return (NULL);
	for (desc = table; desc->pd_string != NULL; desc++)
		if (FUNC0(desc->pd_string, string) == 0)
			return (desc);
	return (NULL);
}