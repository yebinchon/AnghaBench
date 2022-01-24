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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  poll_sem; int /*<<< orphan*/  comm_toggle; } ;
struct mlx4_priv {TYPE_1__ cmd; } ;
struct mlx4_dev {int /*<<< orphan*/  persist; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STAT_INTERNAL_ERR ; 
 int EAGAIN ; 
 int /*<<< orphan*/  MLX4_COMM_CMD_RESET ; 
 int MLX4_DELAY_RESET_SLAVE ; 
 int FUNC0 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC3 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mlx4_priv* FUNC5 (struct mlx4_dev*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,char*,int /*<<< orphan*/ ,...) ; 
 unsigned long FUNC8 (unsigned long) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct mlx4_dev *dev, u8 cmd, u16 param,
		       unsigned long timeout)
{
	struct mlx4_priv *priv = FUNC5(dev);
	unsigned long end;
	int err = 0;
	int ret_from_pending = 0;

	/* First, verify that the master reports correct status */
	if (FUNC0(dev)) {
		FUNC7(dev, "Communication channel is not idle - my toggle is %d (cmd:0x%x)\n",
			  priv->cmd.comm_toggle, cmd);
		return -EAGAIN;
	}

	/* Write command */
	FUNC2(&priv->cmd.poll_sem);
	if (FUNC3(dev, cmd, param)) {
		/* Only in case the device state is INTERNAL_ERROR,
		 * mlx4_comm_cmd_post returns with an error
		 */
		err = FUNC6(CMD_STAT_INTERNAL_ERR);
		goto out;
	}

	end = FUNC8(timeout) + jiffies;
	while (FUNC0(dev) && FUNC9(jiffies, end))
		FUNC1();
	ret_from_pending = FUNC0(dev);
	if (ret_from_pending) {
		/* check if the slave is trying to boot in the middle of
		 * FLR process. The only non-zero result in the RESET command
		 * is MLX4_DELAY_RESET_SLAVE*/
		if (MLX4_COMM_CMD_RESET == cmd) {
			err = MLX4_DELAY_RESET_SLAVE;
			goto out;
		} else {
			FUNC7(dev, "Communication channel command 0x%x timed out\n",
				  cmd);
			err = FUNC6(CMD_STAT_INTERNAL_ERR);
		}
	}

	if (err)
		FUNC4(dev->persist);
out:
	FUNC10(&priv->cmd.poll_sem);
	return err;
}