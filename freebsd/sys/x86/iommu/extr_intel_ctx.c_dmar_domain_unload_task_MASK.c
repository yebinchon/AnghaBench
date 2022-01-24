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
struct dmar_map_entries_tailq {int dummy; } ;
struct dmar_domain {int /*<<< orphan*/  unload_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_domain*) ; 
 scalar_t__ FUNC2 (struct dmar_map_entries_tailq*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_map_entries_tailq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct dmar_map_entries_tailq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmamap_link ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_domain*,struct dmar_map_entries_tailq*,int) ; 
 int /*<<< orphan*/  dmar_map_entry ; 

__attribute__((used)) static void
FUNC6(void *arg, int pending)
{
	struct dmar_domain *domain;
	struct dmar_map_entries_tailq entries;

	domain = arg;
	FUNC3(&entries);

	for (;;) {
		FUNC0(domain);
		FUNC4(&domain->unload_entries, &entries, dmar_map_entry,
		    dmamap_link);
		FUNC1(domain);
		if (FUNC2(&entries))
			break;
		FUNC5(domain, &entries, true);
	}
}