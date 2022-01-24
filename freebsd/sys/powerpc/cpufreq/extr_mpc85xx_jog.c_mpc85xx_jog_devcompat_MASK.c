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
struct ofw_compat_data {int /*<<< orphan*/ * ocd_str; } ;
typedef  int phandle_t ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 struct ofw_compat_data* jog_compat ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ofw_compat_data *
FUNC2()
{
	phandle_t node;
	int i;

	node = FUNC0("/soc");
	if (node == -1)
		return (NULL);

	for (i = 0; jog_compat[i].ocd_str != NULL; i++)
		if (FUNC1(node, jog_compat[i].ocd_str) > 0)
			break;

	if (jog_compat[i].ocd_str == NULL)
		return (NULL);

	return (&jog_compat[i]);
}