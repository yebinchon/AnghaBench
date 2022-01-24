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
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct mlx5_buf {int /*<<< orphan*/  page_list; int /*<<< orphan*/  dma_tag; int /*<<< orphan*/  dma_map; TYPE_1__ direct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct mlx5_core_dev *dev, struct mlx5_buf *buf)
{

	FUNC1(buf->dma_tag, buf->dma_map);
	FUNC2(buf->dma_tag, buf->direct.buf, buf->dma_map);
	FUNC0(buf->dma_tag);
	FUNC3(buf->page_list);
}