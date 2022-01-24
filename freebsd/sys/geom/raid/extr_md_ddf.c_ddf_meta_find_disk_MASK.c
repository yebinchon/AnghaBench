#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct ddf_vol_meta {int /*<<< orphan*/ ** bvdc; } ;
struct TYPE_4__ {int /*<<< orphan*/ * Physical_Disk_Sequence; int /*<<< orphan*/  Primary_Element_Count; } ;
struct TYPE_3__ {int /*<<< orphan*/  Primary_Element_Count; int /*<<< orphan*/  Secondary_Element_Count; } ;

/* Variables and functions */
 int FUNC0 (struct ddf_vol_meta*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ddf_vol_meta*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ddf_vol_meta*,int /*<<< orphan*/ ) ; 
 TYPE_2__** bvdc ; 
 TYPE_1__* vdc ; 

__attribute__((used)) static int
FUNC3(struct ddf_vol_meta *vmeta, uint32_t PD_Reference,
    int *bvdp, int *posp)
{
	int i, bvd, pos;

	i = 0;
	for (bvd = 0; bvd < FUNC2(vmeta, vdc->Secondary_Element_Count); bvd++) {
		if (vmeta->bvdc[bvd] == NULL) {
			i += FUNC0(vmeta, vdc->Primary_Element_Count); // XXX
			continue;
		}
		for (pos = 0; pos < FUNC0(vmeta, bvdc[bvd]->Primary_Element_Count);
		    pos++, i++) {
			if (FUNC1(vmeta, bvdc[bvd]->Physical_Disk_Sequence[pos]) ==
			    PD_Reference) {
				if (bvdp != NULL)
					*bvdp = bvd;
				if (posp != NULL)
					*posp = pos;
				return (i);
			}
		}
	}
	return (-1);
}