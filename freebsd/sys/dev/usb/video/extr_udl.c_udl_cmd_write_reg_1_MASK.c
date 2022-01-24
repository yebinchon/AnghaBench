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
struct udl_cmd_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDL_BULK_CMD_REG_WRITE_1 ; 
 int /*<<< orphan*/  UDL_BULK_SOC ; 
 int /*<<< orphan*/  FUNC0 (struct udl_cmd_buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct udl_cmd_buf *cb, uint8_t reg, uint8_t val)
{

	FUNC0(cb, UDL_BULK_SOC);
	FUNC0(cb, UDL_BULK_CMD_REG_WRITE_1);
	FUNC0(cb, reg);
	FUNC0(cb, val);
}