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
struct ow_cmd {int xpt_read_len; int /*<<< orphan*/ * xpt_read; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  OW_FLAG_READ_BIT ; 
 int /*<<< orphan*/  READ_POWER_SUPPLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ow_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ow_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev, int *parasite)
{
	struct ow_cmd cmd;

	FUNC1(dev, &cmd, READ_POWER_SUPPLY);
	cmd.flags |= OW_FLAG_READ_BIT;
	cmd.xpt_read_len = 1;
	FUNC0(dev, &cmd);
	*parasite = !cmd.xpt_read[0];	/* parasites pull bus low */

	return 0;
}