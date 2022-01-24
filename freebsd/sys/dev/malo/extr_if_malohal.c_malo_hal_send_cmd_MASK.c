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
struct malo_hal {int /*<<< orphan*/  mh_cmdaddr; int /*<<< orphan*/  mh_dmamap; int /*<<< orphan*/  mh_dmat; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  MALO_H2ARIC_BIT_DOOR_BELL ; 
 int /*<<< orphan*/  MALO_REG_GEN_PTR ; 
 int /*<<< orphan*/  MALO_REG_H2A_INTERRUPT_EVENTS ; 
 int /*<<< orphan*/  MALO_REG_INT_CODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct malo_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct malo_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct malo_hal *mh)
{
	uint32_t dummy;

	FUNC0(mh->mh_dmat, mh->mh_dmamap,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	FUNC2(mh, MALO_REG_GEN_PTR, mh->mh_cmdaddr);
	dummy = FUNC1(mh, MALO_REG_INT_CODE);

	FUNC2(mh, MALO_REG_H2A_INTERRUPT_EVENTS,
	    MALO_H2ARIC_BIT_DOOR_BELL);
}