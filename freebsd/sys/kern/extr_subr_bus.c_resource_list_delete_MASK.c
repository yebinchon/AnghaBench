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
struct resource_list_entry {int /*<<< orphan*/ * res; } ;
struct resource_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_BUS ; 
 int /*<<< orphan*/  FUNC0 (struct resource_list*,struct resource_list_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct resource_list_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  resource_list_entry ; 
 struct resource_list_entry* FUNC3 (struct resource_list*,int,int) ; 

void
FUNC4(struct resource_list *rl, int type, int rid)
{
	struct resource_list_entry *rle = FUNC3(rl, type, rid);

	if (rle) {
		if (rle->res != NULL)
			FUNC2("resource_list_delete: resource has not been released");
		FUNC0(rl, rle, resource_list_entry, link);
		FUNC1(rle, M_BUS);
	}
}