#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_10__ {int len; void* flags; void* addr; } ;
typedef  TYPE_1__ sgt_t ;
struct TYPE_11__ {void* sg_chain_dma; TYPE_1__* sg_chain_virt; } ;
typedef  TYPE_2__ rcb_t ;
struct TYPE_12__ {int iu_length; } ;
typedef  TYPE_3__ iu_header_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 void* FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (TYPE_2__*) ; 
 void* FUNC4 (TYPE_2__*,int) ; 
 void* SG_FLAG_CHAIN ; 
 void* SG_FLAG_LAST ; 
 int FUNC5 (int) ; 

__attribute__((used)) static
boolean_t FUNC6(sgt_t *sg_array, rcb_t *rcb, iu_header_t *iu_hdr,
			uint32_t num_elem_alloted)
{
	uint32_t i;
	uint32_t num_sg = FUNC3(rcb);
	sgt_t *sgt = sg_array; 
	sgt_t *sg_chain = NULL;
	boolean_t partial = false;

	FUNC0(" IN ");

	FUNC1("SGL_Count :%d",num_sg);
	if (0 == num_sg) {
		goto out;
	}

	if (num_sg <= FUNC5(num_elem_alloted)) {
		for (i = 0; i < num_sg; i++, sgt++) {
                        sgt->addr= FUNC2(rcb,i);
                        sgt->len= FUNC4(rcb,i);
                        sgt->flags= 0;
                }
		
		sg_array[num_sg - 1].flags = SG_FLAG_LAST;
	} else {
	/**
	SGL Chaining
	**/
		sg_chain = rcb->sg_chain_virt;
		sgt->addr = rcb->sg_chain_dma;
		sgt->len = num_sg * sizeof(sgt_t);
		sgt->flags = SG_FLAG_CHAIN;
		
		sgt = sg_chain;
		for (i = 0; i < num_sg; i++, sgt++) {
			sgt->addr = FUNC2(rcb,i);
			sgt->len = FUNC4(rcb,i);
			sgt->flags = 0;
		}
		
		sg_chain[num_sg - 1].flags = SG_FLAG_LAST; 
		num_sg = 1;
		partial = true;

	}
out:
	iu_hdr->iu_length = num_sg * sizeof(sgt_t);
	FUNC0(" OUT ");
	return partial;
	
}