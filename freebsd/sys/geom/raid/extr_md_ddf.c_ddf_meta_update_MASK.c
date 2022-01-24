#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ddf_pd_entry {int /*<<< orphan*/  PD_State; int /*<<< orphan*/  PD_GUID; } ;
struct ddf_meta {TYPE_2__* pdr; } ;
struct TYPE_6__ {TYPE_1__* entry; int /*<<< orphan*/  Populated_PDEs; } ;
struct TYPE_5__ {struct ddf_pd_entry* entry; } ;
struct TYPE_4__ {int /*<<< orphan*/  PD_Reference; } ;

/* Variables and functions */
 int FUNC0 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ddf_meta*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ddf_meta*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ddf_pd_entry*,struct ddf_pd_entry*,int) ; 
 TYPE_3__* pdr ; 

__attribute__((used)) static void
FUNC7(struct ddf_meta *meta, struct ddf_meta *src)
{
	struct ddf_pd_entry *pde, *spde;
	int i, j;

	for (i = 0; i < FUNC0(src, pdr->Populated_PDEs); i++) {
		spde = &src->pdr->entry[i];
		if (FUNC5(spde->PD_GUID, 24))
			continue;
		j = FUNC4(meta, NULL,
		    FUNC2(src, pdr->entry[i].PD_Reference));
		if (j < 0) {
			j = FUNC4(meta, NULL, 0xffffffff);
			pde = &meta->pdr->entry[j];
			FUNC6(pde, spde, sizeof(*pde));
		} else {
			pde = &meta->pdr->entry[j];
			FUNC3(meta, pde->PD_State,
			    FUNC1(meta, pde->PD_State) |
			    FUNC1(src, pde->PD_State));
		}
	}
}