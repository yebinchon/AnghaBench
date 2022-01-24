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
typedef  int u16 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; struct mlx4_access_reg* buf; } ;
struct mlx4_access_reg {int constant2; int method; void* reg_data; int status; void* len_const; void* reg_id; void* constant1; } ;
typedef  enum mlx4_access_reg_method { ____Placeholder_mlx4_access_reg_method } mlx4_access_reg_method ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int MLX4_ACCESS_REG_LEN_MASK ; 
 int MLX4_ACCESS_REG_METHOD_MASK ; 
 int MLX4_ACCESS_REG_STATUS_MASK ; 
 int /*<<< orphan*/  MLX4_CMD_ACCESS_REG ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_C ; 
 int /*<<< orphan*/  MLX4_CMD_WRAPPED ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 int FUNC4 (int,int) ; 
 struct mlx4_cmd_mailbox* FUNC5 (struct mlx4_dev*) ; 
 int FUNC6 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

__attribute__((used)) static int FUNC9(struct mlx4_dev *dev, u16 reg_id,
			   enum mlx4_access_reg_method method,
			   u16 reg_len, void *reg_data)
{
	struct mlx4_cmd_mailbox *inbox, *outbox;
	struct mlx4_access_reg *inbuf, *outbuf;
	int err;

	inbox = FUNC5(dev);
	if (FUNC0(inbox))
		return FUNC1(inbox);

	outbox = FUNC5(dev);
	if (FUNC0(outbox)) {
		FUNC8(dev, inbox);
		return FUNC1(outbox);
	}

	inbuf = inbox->buf;
	outbuf = outbox->buf;

	inbuf->constant1 = FUNC2(0x1<<11 | 0x4);
	inbuf->constant2 = 0x1;
	inbuf->reg_id = FUNC2(reg_id);
	inbuf->method = method & MLX4_ACCESS_REG_METHOD_MASK;

	reg_len = FUNC4(reg_len, (u16)(sizeof(inbuf->reg_data)));
	inbuf->len_const =
		FUNC2(((reg_len/4 + 1) & MLX4_ACCESS_REG_LEN_MASK) |
			    ((0x3) << 12));

	FUNC3(inbuf->reg_data, reg_data, reg_len);
	err = FUNC6(dev, inbox->dma, outbox->dma, 0, 0,
			   MLX4_CMD_ACCESS_REG, MLX4_CMD_TIME_CLASS_C,
			   MLX4_CMD_WRAPPED);
	if (err)
		goto out;

	if (outbuf->status & MLX4_ACCESS_REG_STATUS_MASK) {
		err = outbuf->status & MLX4_ACCESS_REG_STATUS_MASK;
		FUNC7(dev,
			 "MLX4_CMD_ACCESS_REG(%x) returned REG status (%x)\n",
			 reg_id, err);
		goto out;
	}

	FUNC3(reg_data, outbuf->reg_data, reg_len);
out:
	FUNC8(dev, inbox);
	FUNC8(dev, outbox);
	return err;
}