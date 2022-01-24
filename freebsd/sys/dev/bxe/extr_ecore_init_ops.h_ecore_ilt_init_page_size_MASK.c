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
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ILT_CLIENT_CDU ; 
 int /*<<< orphan*/  ILT_CLIENT_QM ; 
 int /*<<< orphan*/  ILT_CLIENT_SRC ; 
 int /*<<< orphan*/  ILT_CLIENT_TM ; 
 int /*<<< orphan*/  PXP2_REG_RQ_CDU_P_SIZE ; 
 int /*<<< orphan*/  PXP2_REG_RQ_QM_P_SIZE ; 
 int /*<<< orphan*/  PXP2_REG_RQ_SRC_P_SIZE ; 
 int /*<<< orphan*/  PXP2_REG_RQ_TM_P_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct bxe_softc *sc, uint8_t initop)
{
	FUNC0(sc, ILT_CLIENT_CDU,
				  PXP2_REG_RQ_CDU_P_SIZE, initop);
	FUNC0(sc, ILT_CLIENT_QM,
				  PXP2_REG_RQ_QM_P_SIZE, initop);
	FUNC0(sc, ILT_CLIENT_SRC,
				  PXP2_REG_RQ_SRC_P_SIZE, initop);
	FUNC0(sc, ILT_CLIENT_TM,
				  PXP2_REG_RQ_TM_P_SIZE, initop);
}