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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  Q8_FW_IMAGE_ADDR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ql83xx_firmware ; 
 int ql83xx_firmware_len ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,int*,int) ; 

__attribute__((used)) static int
FUNC2(qla_host_t *ha)
{
        uint64_t        addr;
        uint32_t        *data32;
        uint32_t        len32;
        int             ret;

        addr = (uint64_t)(FUNC0(ha, Q8_FW_IMAGE_ADDR));
        data32 = (uint32_t *)ql83xx_firmware;
        len32 = ql83xx_firmware_len >> 2;

        ret = FUNC1(ha, addr, data32, len32);

        return (ret);
}