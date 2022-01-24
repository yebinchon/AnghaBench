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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct mlx4_func {int bus; int device; int function; int physical_function; int rsvd_eqs; int max_eq; int rsvd_uars; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_QUERY_FUNC ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  QUERY_FUNC_BUS_OFFSET ; 
 int /*<<< orphan*/  QUERY_FUNC_DEVICE_OFFSET ; 
 int /*<<< orphan*/  QUERY_FUNC_FUNCTION_OFFSET ; 
 int /*<<< orphan*/  QUERY_FUNC_MAX_EQ_OFFSET ; 
 int /*<<< orphan*/  QUERY_FUNC_PHYSICAL_FUNCTION_OFFSET ; 
 int /*<<< orphan*/  QUERY_FUNC_RSVD_EQS_OFFSET ; 
 int /*<<< orphan*/  QUERY_FUNC_RSVD_UARS_OFFSET ; 
 struct mlx4_cmd_mailbox* FUNC3 (struct mlx4_dev*) ; 
 int FUNC4 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,char*,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

int FUNC7(struct mlx4_dev *dev, struct mlx4_func *func, int slave)
{
	struct mlx4_cmd_mailbox *mailbox;
	u32 *outbox;
	u8 in_modifier;
	u8 field;
	u16 field16;
	int err;

#define QUERY_FUNC_BUS_OFFSET			0x00
#define QUERY_FUNC_DEVICE_OFFSET		0x01
#define QUERY_FUNC_FUNCTION_OFFSET		0x01
#define QUERY_FUNC_PHYSICAL_FUNCTION_OFFSET	0x03
#define QUERY_FUNC_RSVD_EQS_OFFSET		0x04
#define QUERY_FUNC_MAX_EQ_OFFSET		0x06
#define QUERY_FUNC_RSVD_UARS_OFFSET		0x0b

	mailbox = FUNC3(dev);
	if (FUNC0(mailbox))
		return FUNC2(mailbox);
	outbox = mailbox->buf;

	in_modifier = slave;

	err = FUNC4(dev, 0, mailbox->dma, in_modifier, 0,
			   MLX4_CMD_QUERY_FUNC,
			   MLX4_CMD_TIME_CLASS_A,
			   MLX4_CMD_NATIVE);
	if (err)
		goto out;

	FUNC1(field, outbox, QUERY_FUNC_BUS_OFFSET);
	func->bus = field & 0xf;
	FUNC1(field, outbox, QUERY_FUNC_DEVICE_OFFSET);
	func->device = field & 0xf1;
	FUNC1(field, outbox, QUERY_FUNC_FUNCTION_OFFSET);
	func->function = field & 0x7;
	FUNC1(field, outbox, QUERY_FUNC_PHYSICAL_FUNCTION_OFFSET);
	func->physical_function = field & 0xf;
	FUNC1(field16, outbox, QUERY_FUNC_RSVD_EQS_OFFSET);
	func->rsvd_eqs = field16 & 0xffff;
	FUNC1(field16, outbox, QUERY_FUNC_MAX_EQ_OFFSET);
	func->max_eq = field16 & 0xffff;
	FUNC1(field, outbox, QUERY_FUNC_RSVD_UARS_OFFSET);
	func->rsvd_uars = field & 0x0f;

	FUNC5(dev, "Bus: %d, Device: %d, Function: %d, Physical function: %d, Max EQs: %d, Reserved EQs: %d, Reserved UARs: %d\n",
		 func->bus, func->device, func->function, func->physical_function,
		 func->max_eq, func->rsvd_eqs, func->rsvd_uars);

out:
	FUNC6(dev, mailbox);
	return err;
}