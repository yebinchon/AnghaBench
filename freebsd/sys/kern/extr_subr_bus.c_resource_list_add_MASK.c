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
struct resource_list_entry {int type; int rid; void* count; void* end; void* start; int /*<<< orphan*/ * res; scalar_t__ flags; } ;
struct resource_list {int dummy; } ;
typedef  void* rman_res_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_BUS ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct resource_list*,struct resource_list_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 struct resource_list_entry* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct resource_list_entry* FUNC3 (struct resource_list*,int,int) ; 

struct resource_list_entry *
FUNC4(struct resource_list *rl, int type, int rid,
    rman_res_t start, rman_res_t end, rman_res_t count)
{
	struct resource_list_entry *rle;

	rle = FUNC3(rl, type, rid);
	if (!rle) {
		rle = FUNC1(sizeof(struct resource_list_entry), M_BUS,
		    M_NOWAIT);
		if (!rle)
			FUNC2("resource_list_add: can't record entry");
		FUNC0(rl, rle, link);
		rle->type = type;
		rle->rid = rid;
		rle->res = NULL;
		rle->flags = 0;
	}

	if (rle->res)
		FUNC2("resource_list_add: resource entry is busy");

	rle->start = start;
	rle->end = end;
	rle->count = count;
	return (rle);
}