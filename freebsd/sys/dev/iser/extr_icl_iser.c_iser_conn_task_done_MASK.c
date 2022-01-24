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
struct iser_tx_desc {int mapped; int /*<<< orphan*/  dma_addr; } ;
struct iser_device {int /*<<< orphan*/  ib_device; } ;
struct icl_pdu {int dummy; } ;
struct icl_iser_pdu {int /*<<< orphan*/ * data; scalar_t__* dir; struct iser_tx_desc desc; TYPE_2__* iser_conn; } ;
struct icl_conn {int dummy; } ;
struct TYPE_3__ {struct iser_device* device; } ;
struct TYPE_4__ {TYPE_1__ ib_conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 size_t ISER_DIR_IN ; 
 size_t ISER_DIR_OUT ; 
 int /*<<< orphan*/  ISER_HEADERS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct icl_iser_pdu* FUNC1 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC2 (struct icl_iser_pdu*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct icl_conn*,struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC4 (struct icl_iser_pdu*,size_t) ; 
 scalar_t__ FUNC5 (int) ; 

void
FUNC6(struct icl_conn *ic, void *prv)
{
	struct icl_pdu *ip = prv;
	struct icl_iser_pdu *iser_pdu = FUNC1(ip);
	struct iser_device *device = iser_pdu->iser_conn->ib_conn.device;
	struct iser_tx_desc *tx_desc = &iser_pdu->desc;

	if (iser_pdu->dir[ISER_DIR_IN]) {
		FUNC4(iser_pdu, ISER_DIR_IN);
		FUNC2(iser_pdu,
					 &iser_pdu->data[ISER_DIR_IN],
					 DMA_FROM_DEVICE);
	}

	if (iser_pdu->dir[ISER_DIR_OUT]) {
		FUNC4(iser_pdu, ISER_DIR_OUT);
		FUNC2(iser_pdu,
					 &iser_pdu->data[ISER_DIR_OUT],
					 DMA_TO_DEVICE);
	}

	if (FUNC5(tx_desc->mapped)) {
		FUNC0(device->ib_device, tx_desc->dma_addr,
				    ISER_HEADERS_LEN, DMA_TO_DEVICE);
		tx_desc->mapped = false;
	}

	FUNC3(ic, ip);
}