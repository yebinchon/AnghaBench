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
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
struct vtscsi_softc {int dummy; } ;
struct sglist {int dummy; } ;
struct ccb_hdr {int flags; } ;
struct ccb_scsiio {void* data_ptr; int sglist_cnt; int /*<<< orphan*/  dxfer_len; struct ccb_hdr ccb_h; } ;
struct bus_dma_segment {int /*<<< orphan*/  ds_len; int /*<<< orphan*/  ds_addr; } ;
struct bio {int dummy; } ;

/* Variables and functions */
#define  CAM_DATA_BIO 132 
 int CAM_DATA_MASK ; 
#define  CAM_DATA_PADDR 131 
#define  CAM_DATA_SG 130 
#define  CAM_DATA_SG_PADDR 129 
#define  CAM_DATA_VADDR 128 
 int EINVAL ; 
 int FUNC0 (struct sglist*,void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sglist*,struct bio*) ; 
 int FUNC2 (struct sglist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct vtscsi_softc *sc, struct sglist *sg,
    struct ccb_scsiio *csio)
{
	struct ccb_hdr *ccbh;
	struct bus_dma_segment *dseg;
	int i, error;

	ccbh = &csio->ccb_h;
	error = 0;

	switch ((ccbh->flags & CAM_DATA_MASK)) {
	case CAM_DATA_VADDR:
		error = FUNC0(sg, csio->data_ptr, csio->dxfer_len);
		break;
	case CAM_DATA_PADDR:
		error = FUNC2(sg,
		    (vm_paddr_t)(vm_offset_t) csio->data_ptr, csio->dxfer_len);
		break;
	case CAM_DATA_SG:
		for (i = 0; i < csio->sglist_cnt && error == 0; i++) {
			dseg = &((struct bus_dma_segment *)csio->data_ptr)[i];
			error = FUNC0(sg,
			    (void *)(vm_offset_t) dseg->ds_addr, dseg->ds_len);
		}
		break;
	case CAM_DATA_SG_PADDR:
		for (i = 0; i < csio->sglist_cnt && error == 0; i++) {
			dseg = &((struct bus_dma_segment *)csio->data_ptr)[i];
			error = FUNC2(sg,
			    (vm_paddr_t) dseg->ds_addr, dseg->ds_len);
		}
		break;
	case CAM_DATA_BIO:
		error = FUNC1(sg, (struct bio *) csio->data_ptr);
		break;
	default:
		error = EINVAL;
		break;
	}

	return (error);
}