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
struct resource_list_entry {scalar_t__ res; } ;
struct resource_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_BUS ; 
 struct resource_list_entry* FUNC0 (struct resource_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct resource_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct resource_list_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(struct resource_list *rl)
{
	struct resource_list_entry *rle;

	while ((rle = FUNC0(rl)) != NULL) {
		if (rle->res)
			FUNC3("resource_list_free: resource entry is busy");
		FUNC1(rl, link);
		FUNC2(rle, M_BUS);
	}
}