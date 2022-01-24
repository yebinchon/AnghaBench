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
struct adapter {int dummy; } ;

/* Variables and functions */
 int A_MPS_VF_STAT_RX_VF_ERR_FRAMES_H ; 
 int A_MPS_VF_STAT_TX_VF_BCAST_BYTES_L ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct adapter *sc)
{
	int reg;

	for (reg = A_MPS_VF_STAT_TX_VF_BCAST_BYTES_L;
	     reg <= A_MPS_VF_STAT_RX_VF_ERR_FRAMES_H; reg += 4)
		FUNC1(sc, FUNC0(reg), 0);
}