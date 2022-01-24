#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct ddf_vdc_record {int /*<<< orphan*/  Block_Count; int /*<<< orphan*/ * Physical_Disk_Sequence; int /*<<< orphan*/  Primary_Element_Count; int /*<<< orphan*/  Signature; } ;
struct ddf_meta {int dummy; } ;
typedef  scalar_t__ off_t ;
struct TYPE_8__ {int /*<<< orphan*/  Max_Primary_Element_Entries; } ;
struct TYPE_7__ {int /*<<< orphan*/  PD_Reference; } ;
struct TYPE_6__ {TYPE_1__* entry; } ;
struct TYPE_5__ {int /*<<< orphan*/  Configured_Size; } ;

/* Variables and functions */
 scalar_t__ DDF_VDCR_SIGNATURE ; 
 size_t FUNC0 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ddf_meta*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ddf_meta*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ddf_meta*) ; 
 struct ddf_vdc_record* FUNC8 (struct ddf_meta*,int) ; 
 int FUNC9 (struct ddf_meta*,int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_4__* hdr ; 
 TYPE_3__* pdd ; 
 TYPE_2__* pdr ; 

__attribute__((used)) static int
FUNC10(struct ddf_meta *meta, off_t *off, off_t *size)
{
	struct ddf_vdc_record *vdc;
	off_t beg[32], end[32], beg1, end1;
	uint64_t *offp;
	int i, j, n, num, pos;
	uint32_t ref;

	*off = 0;
	*size = 0;
	ref = FUNC2(meta, pdd->PD_Reference);
	pos = FUNC9(meta, NULL, ref);
	beg[0] = 0;
	end[0] = FUNC4(meta, pdr->entry[pos].Configured_Size);
	n = 1;
	num = FUNC7(meta);
	for (i = 0; i < num; i++) {
		vdc = FUNC8(meta, i);
		if (FUNC3(meta, vdc->Signature) != DDF_VDCR_SIGNATURE)
			continue;
		for (pos = 0; pos < FUNC1(meta, vdc->Primary_Element_Count); pos++)
			if (FUNC3(meta, vdc->Physical_Disk_Sequence[pos]) == ref)
				break;
		if (pos == FUNC1(meta, vdc->Primary_Element_Count))
			continue;
		offp = (uint64_t *)&(vdc->Physical_Disk_Sequence[
		    FUNC0(meta, hdr->Max_Primary_Element_Entries)]);
		beg1 = FUNC6(meta, offp + pos);
		end1 = beg1 + FUNC5(meta, vdc->Block_Count);
		for (j = 0; j < n; j++) {
			if (beg[j] >= end1 || end[j] <= beg1 )
				continue;
			if (beg[j] < beg1 && end[j] > end1) {
				beg[n] = end1;
				end[n] = end[j];
				end[j] = beg1;
				n++;
			} else if (beg[j] < beg1)
				end[j] = beg1;
			else
				beg[j] = end1;
		}
	}
	for (j = 0; j < n; j++) {
		if (end[j] - beg[j] > *size) {
			*off = beg[j];
			*size = end[j] - beg[j];
		}
	}
	return ((*size > 0) ? 1 : 0);
}