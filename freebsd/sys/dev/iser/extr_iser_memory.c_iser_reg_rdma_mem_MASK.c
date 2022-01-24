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
struct iser_mem_reg {struct fast_reg_descriptor* mem_h; } ;
struct iser_device {struct ib_device* ib_device; } ;
struct iser_data_buf {int dma_nents; } ;
struct icl_iser_pdu {struct iser_mem_reg* rdma_reg; struct iser_data_buf* data; TYPE_1__* iser_conn; } ;
struct ib_device {int dummy; } ;
struct ib_conn {struct iser_device* device; } ;
struct fast_reg_descriptor {int /*<<< orphan*/  rsc; } ;
typedef  enum iser_data_dir { ____Placeholder_iser_data_dir } iser_data_dir ;
struct TYPE_2__ {struct ib_conn ib_conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct iser_data_buf*,struct ib_device*) ; 
 int FUNC2 (struct icl_iser_pdu*,struct iser_data_buf*,int /*<<< orphan*/ *,struct iser_mem_reg*) ; 
 struct fast_reg_descriptor* FUNC3 (struct ib_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_conn*,struct fast_reg_descriptor*) ; 

int
FUNC5(struct icl_iser_pdu *iser_pdu,
		  enum iser_data_dir cmd_dir)
{
	struct ib_conn *ib_conn = &iser_pdu->iser_conn->ib_conn;
	struct iser_device   *device = ib_conn->device;
	struct ib_device     *ibdev = device->ib_device;
	struct iser_data_buf *mem = &iser_pdu->data[cmd_dir];
	struct iser_mem_reg *mem_reg = &iser_pdu->rdma_reg[cmd_dir];
	struct fast_reg_descriptor *desc = NULL;
	int err, aligned_len;

	aligned_len = FUNC1(mem, ibdev);
	if (aligned_len != mem->dma_nents) {
		FUNC0("bounce buffer is not supported");
		return 1;
	}

	if (mem->dma_nents != 1) {
		desc = FUNC3(ib_conn);
		mem_reg->mem_h = desc;
	}

	err = FUNC2(iser_pdu, mem, desc ? &desc->rsc : NULL,
				       mem_reg);
	if (err)
		goto err_reg;

	return (0);

err_reg:
	if (desc)
		FUNC4(ib_conn, desc);

	return (err);
}