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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_HDR_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(qlnx_host_t *ha, uint8_t *mta, uint32_t mcnt,
	uint32_t add_mac)
{
        int	i;

        for (i = 0; i < mcnt; i++) {
                if (add_mac) {
                        if (FUNC0(ha, mta))
                                break;
                } else {
                        if (FUNC1(ha, mta))
                                break;
                }

                mta += ETHER_HDR_LEN;
        }
        return;
}