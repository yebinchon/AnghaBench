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
struct spi_command {int tx_cmd_sz; int rx_cmd_sz; struct spi_command** rx_cmd; struct spi_command** tx_cmd; } ;
typedef  struct spi_command uint8_t ;
typedef  int /*<<< orphan*/  txBuf ;
struct at45d_mfg_info {int /*<<< orphan*/  ext_id; int /*<<< orphan*/  jedec_id; } ;
typedef  int /*<<< orphan*/  rxBuf ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 struct spi_command MANUFACTURER_ID ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spi_command*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_command*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_command*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_command*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, struct at45d_mfg_info *resp)
{
	uint8_t rxBuf[8], txBuf[8];
	struct spi_command cmd;
	int err;

	FUNC4(&cmd, 0, sizeof(cmd));
	FUNC4(txBuf, 0, sizeof(txBuf));
	FUNC4(rxBuf, 0, sizeof(rxBuf));

	txBuf[0] = MANUFACTURER_ID;
	cmd.tx_cmd = &txBuf;
	cmd.rx_cmd = &rxBuf;
	cmd.tx_cmd_sz = cmd.rx_cmd_sz = 7;
	err = FUNC0(FUNC3(dev), dev, &cmd);
	if (err)
		return (err);

	resp->jedec_id = FUNC2(rxBuf + 1);
	resp->ext_id   = FUNC1(rxBuf + 5);

	return (0);
}