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
typedef  int uint32_t ;
struct TYPE_2__ {int nsfeat; int npwg; } ;
struct nvme_namespace {int boundary; TYPE_1__ data; } ;

/* Variables and functions */
 int NVME_NS_DATA_NSFEAT_NPVALID_MASK ; 
 int NVME_NS_DATA_NSFEAT_NPVALID_SHIFT ; 
 int FUNC0 (struct nvme_namespace*) ; 

uint32_t
FUNC1(struct nvme_namespace *ns)
{

	if (((ns->data.nsfeat >> NVME_NS_DATA_NSFEAT_NPVALID_SHIFT) &
	    NVME_NS_DATA_NSFEAT_NPVALID_MASK) != 0 && ns->data.npwg != 0) {
		return ((ns->data.npwg + 1) * FUNC0(ns));
	}
	return (ns->boundary);
}