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
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*,char const*,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 

int
FUNC1(phandle_t node, const char *list_name,
    const char *cells_name, int *count)
{

	return (FUNC0(node, list_name, cells_name,
		    -1, NULL, count, NULL));
}