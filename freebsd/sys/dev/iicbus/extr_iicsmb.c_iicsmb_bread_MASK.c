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
typedef  int u_char ;
struct iic_msg {int member_0; int member_1; int member_2; char* member_3; int len; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IIC_M_NOSTART ; 
 int IIC_M_NOSTOP ; 
 int IIC_M_RD ; 
 int IIC_M_WR ; 
 int /*<<< orphan*/  IIC_WAIT ; 
 int SMB_EINVAL ; 
 int SMB_MAXBLOCKSIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct iic_msg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, u_char slave, char cmd, u_char *count, char *buf)
{
	struct iic_msg msgs[] = {
	     { slave, IIC_M_WR | IIC_M_NOSTOP, 1, &cmd },
	     { slave, IIC_M_RD | IIC_M_NOSTOP, 1, count },
	};
	struct iic_msg block_msg[] = {
	     { slave, IIC_M_RD | IIC_M_NOSTART, 0, buf },
	};
	device_t parent = FUNC1(dev);
	int error;

	/* Have to do this because the command is split in two transfers. */
	error = FUNC4(parent, dev, IIC_WAIT);
	if (error == 0)
		error = FUNC0(dev, msgs);
	if (error == 0) {
		/*
		 * If the slave offers an empty or a too long reply,
		 * read one byte to generate the stop or abort.
		 */
		if (*count > SMB_MAXBLOCKSIZE || *count == 0)
			block_msg[0].len = 1;
		else
			block_msg[0].len = *count;
		error = FUNC0(dev, block_msg);
		if (*count > SMB_MAXBLOCKSIZE || *count == 0)
			error = SMB_EINVAL;
	}
	(void)FUNC3(parent, dev);
	return (FUNC2(error));
}