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
struct dmar_map_entry {int dummy; } ;
struct dmar_domain {int /*<<< orphan*/  batch_no; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct dmar_map_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmamap_link ; 
 int dmar_batch_coalesce ; 

__attribute__((used)) static bool
FUNC1(struct dmar_domain *domain,
    struct dmar_map_entry *entry)
{

	if (FUNC0(entry, dmamap_link) == NULL)
		return (true);
	return (domain->batch_no++ % dmar_batch_coalesce == 0);
}