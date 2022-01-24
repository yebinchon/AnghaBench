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
struct mlx5_fpga_dma_buf {int /*<<< orphan*/  dma_dir; TYPE_1__* sg; } ;
struct mlx5_fpga_conn {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 scalar_t__ MLX5_FPGA_RECV_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_fpga_dma_buf*) ; 
 struct mlx5_fpga_dma_buf* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_fpga_conn*,struct mlx5_fpga_dma_buf*) ; 

__attribute__((used)) static int FUNC3(struct mlx5_fpga_conn *conn)
{
	struct mlx5_fpga_dma_buf *buf;
	int err;

	buf = FUNC1(sizeof(*buf) + MLX5_FPGA_RECV_SIZE, 0);
	if (!buf)
		return -ENOMEM;

	buf->sg[0].data = (void *)(buf + 1);
	buf->sg[0].size = MLX5_FPGA_RECV_SIZE;
	buf->dma_dir = DMA_FROM_DEVICE;

	err = FUNC2(conn, buf);
	if (err)
		FUNC0(buf);

	return err;
}