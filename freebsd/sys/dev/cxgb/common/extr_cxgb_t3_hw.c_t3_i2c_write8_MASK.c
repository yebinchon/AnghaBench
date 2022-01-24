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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_I2C_DATA ; 
 int /*<<< orphan*/  A_I2C_OP ; 
 int F_I2C_ACK ; 
 int /*<<< orphan*/  F_I2C_BUSY ; 
 int F_I2C_CONT ; 
 int F_I2C_WRITE ; 
 int /*<<< orphan*/  I2C_ATTEMPTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC5(adapter_t *adapter, int chained, u8 val)
{
	int ret;
	u32 opval;
	FUNC0(adapter);
	FUNC4(adapter, A_I2C_DATA, FUNC2(val));
	FUNC4(adapter, A_I2C_OP,
		     F_I2C_WRITE | (chained ? F_I2C_CONT : 0));
	ret = FUNC3(adapter, A_I2C_OP, F_I2C_BUSY, 0,
				  I2C_ATTEMPTS, 10, &opval);
	if (ret >= 0)
		ret = ((opval & F_I2C_ACK) == F_I2C_ACK);
	FUNC1(adapter);
	return ret;
}