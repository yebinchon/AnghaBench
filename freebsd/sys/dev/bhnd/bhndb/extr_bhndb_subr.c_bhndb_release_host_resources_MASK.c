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
struct bhndb_host_resources {size_t num_dma_tags; struct bhndb_host_resources* dma_tags; struct bhndb_host_resources* resource_specs; struct bhndb_host_resources* resources; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_BHND ; 
 int /*<<< orphan*/  FUNC0 (struct bhndb_host_resources) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bhndb_host_resources*,struct bhndb_host_resources*) ; 
 int /*<<< orphan*/  FUNC2 (struct bhndb_host_resources*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct bhndb_host_resources *hr)
{
	FUNC1(hr->owner, hr->resource_specs, hr->resources);

	for (size_t i = 0; i < hr->num_dma_tags; i++)
		FUNC0(hr->dma_tags[i]);

	FUNC2(hr->resources, M_BHND);
	FUNC2(hr->resource_specs, M_BHND);
	FUNC2(hr->dma_tags, M_BHND);
	FUNC2(hr, M_BHND);
}