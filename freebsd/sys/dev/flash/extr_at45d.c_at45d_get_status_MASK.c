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
struct spi_command {int rx_cmd_sz; int tx_cmd_sz; struct spi_command* rx_cmd; struct spi_command* tx_cmd; } ;
typedef  struct spi_command uint8_t ;
typedef  int /*<<< orphan*/  txBuf ;
typedef  int /*<<< orphan*/  rxBuf ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spi_command*) ; 
 struct spi_command STATUS_REGISTER_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_command*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint8_t *status)
{
	uint8_t rxBuf[8], txBuf[8];
	struct spi_command cmd;
	int err;

	FUNC2(&cmd, 0, sizeof(cmd));
	FUNC2(txBuf, 0, sizeof(txBuf));
	FUNC2(rxBuf, 0, sizeof(rxBuf));

	txBuf[0] = STATUS_REGISTER_READ;
	cmd.tx_cmd = txBuf;
	cmd.rx_cmd = rxBuf;
	cmd.rx_cmd_sz = cmd.tx_cmd_sz = 2;
	err = FUNC0(FUNC1(dev), dev, &cmd);
	*status = rxBuf[1];
	return (err);
}