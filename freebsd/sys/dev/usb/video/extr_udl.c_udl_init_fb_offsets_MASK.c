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
typedef  int /*<<< orphan*/  uint32_t ;
struct udl_cmd_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDL_REG_ADDR_START16 ; 
 int /*<<< orphan*/  UDL_REG_ADDR_START8 ; 
 int /*<<< orphan*/  UDL_REG_ADDR_STRIDE16 ; 
 int /*<<< orphan*/  UDL_REG_ADDR_STRIDE8 ; 
 int /*<<< orphan*/  UDL_REG_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct udl_cmd_buf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct udl_cmd_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct udl_cmd_buf *cb, uint32_t start16, uint32_t stride16,
    uint32_t start8, uint32_t stride8)
{
	FUNC0(cb, UDL_REG_SYNC, 0x00);
	FUNC1(cb, UDL_REG_ADDR_START16, start16);
	FUNC1(cb, UDL_REG_ADDR_STRIDE16, stride16);
	FUNC1(cb, UDL_REG_ADDR_START8, start8);
	FUNC1(cb, UDL_REG_ADDR_STRIDE8, stride8);
	FUNC0(cb, UDL_REG_SYNC, 0xff);
}