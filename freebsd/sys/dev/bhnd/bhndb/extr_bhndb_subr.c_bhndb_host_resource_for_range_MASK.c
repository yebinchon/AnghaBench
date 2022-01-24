#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct resource {int dummy; } ;
struct bhndb_host_resources {TYPE_1__* resource_specs; struct resource** resources; } ;
typedef  int rman_res_t ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 int FUNC0 (struct resource*) ; 
 int FUNC1 (struct resource*) ; 

struct resource *
FUNC2(struct bhndb_host_resources *hr, int type,
    rman_res_t start, rman_res_t count)
{
	for (u_int i = 0; hr->resource_specs[i].type != -1; i++) {
		struct resource *r = hr->resources[i];

		if (hr->resource_specs[i].type != type)
			continue;

		/* Verify range */
		if (FUNC1(r) > start)
			continue;
		
		if (FUNC0(r) < (start + count - 1))
			continue;

		return (r);
	}

	return (NULL);
}