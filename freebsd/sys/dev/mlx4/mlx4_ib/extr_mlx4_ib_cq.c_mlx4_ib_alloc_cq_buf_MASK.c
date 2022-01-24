#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct mlx4_ib_dev {TYPE_2__* dev; } ;
struct TYPE_12__ {int /*<<< orphan*/  page_shift; int /*<<< orphan*/  npages; } ;
struct mlx4_ib_cq_buf {int entry_size; TYPE_5__ buf; int /*<<< orphan*/  mtt; } ;
struct TYPE_10__ {int cqe_size; } ;
struct TYPE_11__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int FUNC0 (TYPE_2__*,int,int,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,TYPE_5__*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mlx4_ib_dev *dev, struct mlx4_ib_cq_buf *buf, int nent)
{
	int err;

	err = FUNC0(dev->dev, nent * dev->dev->caps.cqe_size,
			     PAGE_SIZE * 2, &buf->buf, GFP_KERNEL);

	if (err)
		goto out;

	buf->entry_size = dev->dev->caps.cqe_size;
	err = FUNC4(dev->dev, buf->buf.npages, buf->buf.page_shift,
				    &buf->mtt);
	if (err)
		goto err_buf;

	err = FUNC2(dev->dev, &buf->mtt, &buf->buf, GFP_KERNEL);
	if (err)
		goto err_mtt;

	return 0;

err_mtt:
	FUNC3(dev->dev, &buf->mtt);

err_buf:
	FUNC1(dev->dev, nent * buf->entry_size, &buf->buf);

out:
	return err;
}