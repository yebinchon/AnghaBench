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
typedef  int u_int32_t ;
struct agg_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct agg_info*,int /*<<< orphan*/ ,int,int) ; 
 int CODEC_CMD_WRITE ; 
 int /*<<< orphan*/  PORT_CODEC_CMD ; 
 int /*<<< orphan*/  PORT_CODEC_REG ; 
 scalar_t__ FUNC1 (struct agg_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(struct agg_info *ess, int regno, u_int32_t data)
{
	/* We have to wait for a SAFE time to write addr/data */
	if (FUNC1(ess)) {
		/* Timed out. Abort writing. */
		FUNC2(ess->dev, "agg_wrcodec() PROGLESS timed out.\n");
		return -1;
	}

	FUNC0(ess, PORT_CODEC_REG, data, 2);
	FUNC0(ess, PORT_CODEC_CMD, CODEC_CMD_WRITE | regno, 1);

	/* Wait for write completion */
	if (FUNC1(ess)) {
		/* Timed out. */
		FUNC2(ess->dev, "agg_wrcodec() RW_DONE timed out.\n");
		return -1;
	}

	return 0;
}