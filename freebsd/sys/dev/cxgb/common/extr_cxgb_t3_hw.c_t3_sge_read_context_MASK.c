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
typedef  int u32 ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_CONTEXT_CMD ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA0 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA1 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA2 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA3 ; 
 int EBUSY ; 
 int EIO ; 
 int F_CONTEXT_CMD_BUSY ; 
 int /*<<< orphan*/  SG_CONTEXT_CMD_ATTEMPTS ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(unsigned int type, adapter_t *adapter,
			       unsigned int id, u32 data[4])
{
	if (FUNC2(adapter, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
		return -EBUSY;

	FUNC4(adapter, A_SG_CONTEXT_CMD,
		     FUNC1(0) | type | FUNC0(id));
	if (FUNC3(adapter, A_SG_CONTEXT_CMD, F_CONTEXT_CMD_BUSY, 0,
			    SG_CONTEXT_CMD_ATTEMPTS, 1))
		return -EIO;
	data[0] = FUNC2(adapter, A_SG_CONTEXT_DATA0);
	data[1] = FUNC2(adapter, A_SG_CONTEXT_DATA1);
	data[2] = FUNC2(adapter, A_SG_CONTEXT_DATA2);
	data[3] = FUNC2(adapter, A_SG_CONTEXT_DATA3);
	return 0;
}