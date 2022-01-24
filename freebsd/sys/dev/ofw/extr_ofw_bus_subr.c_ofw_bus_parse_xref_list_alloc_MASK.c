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
typedef  int /*<<< orphan*/  pcell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,char const*,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ **) ; 

int
FUNC2(phandle_t node, const char *list_name,
    const char *cells_name, int idx, phandle_t *producer, int *ncells,
    pcell_t **cells)
{

	FUNC0(idx >= 0,
	    ("ofw_bus_parse_xref_list_alloc: negative index supplied"));

	return (FUNC1(node, list_name, cells_name,
		    idx, producer, ncells, cells));
}