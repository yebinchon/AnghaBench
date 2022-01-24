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
typedef  int /*<<< orphan*/  u_int ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int A_MPS_VF_STAT_RX_VF_ERR_FRAMES_H ; 
 int A_MPS_VF_STAT_TX_VF_BCAST_BYTES_L ; 
 int /*<<< orphan*/  A_PL_INDIR_CMD ; 
 int /*<<< orphan*/  A_PL_INDIR_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct adapter *sc, u_int vin)
{
	int reg;

	FUNC4(sc, A_PL_INDIR_CMD, FUNC2(1) | FUNC3(vin) |
	    FUNC1(FUNC0(A_MPS_VF_STAT_TX_VF_BCAST_BYTES_L)));
	for (reg = A_MPS_VF_STAT_TX_VF_BCAST_BYTES_L;
	     reg <= A_MPS_VF_STAT_RX_VF_ERR_FRAMES_H; reg += 4)
		FUNC4(sc, A_PL_INDIR_DATA, 0);
}