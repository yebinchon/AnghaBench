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
typedef  int /*<<< orphan*/  uint8_t ;
struct ow_cmd {int xpt_read_len; int /*<<< orphan*/  xpt_read; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  READ_SCRATCHPAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ow_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ow_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint8_t *scratch, int len)
{
	struct ow_cmd cmd;
	
	FUNC2(dev, &cmd, READ_SCRATCHPAD);
	cmd.xpt_read_len = len;
	FUNC1(dev, &cmd);
	FUNC0(scratch, cmd.xpt_read, len);

	return 0;
}