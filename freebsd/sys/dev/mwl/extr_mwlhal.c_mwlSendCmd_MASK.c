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
struct mwl_hal_priv {int /*<<< orphan*/  mh_cmdaddr; int /*<<< orphan*/  mh_dmamap; int /*<<< orphan*/  mh_dmat; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  MACREG_H2ARIC_BIT_DOOR_BELL ; 
 int /*<<< orphan*/  MACREG_REG_GEN_PTR ; 
 int /*<<< orphan*/  MACREG_REG_H2A_INTERRUPT_EVENTS ; 
 int /*<<< orphan*/  MACREG_REG_INT_CODE ; 
 int /*<<< orphan*/  FUNC0 (struct mwl_hal_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl_hal_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct mwl_hal_priv *mh)
{
	uint32_t dummy;

	FUNC2(mh->mh_dmat, mh->mh_dmamap,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	FUNC1(mh, MACREG_REG_GEN_PTR, mh->mh_cmdaddr);
	dummy = FUNC0(mh, MACREG_REG_INT_CODE);

	FUNC1(mh, MACREG_REG_H2A_INTERRUPT_EVENTS, MACREG_H2ARIC_BIT_DOOR_BELL);
}