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
typedef  scalar_t__ uint8_t ;
struct lmac {struct bgx* bgx; } ;
struct bgx {scalar_t__ lmac_count; size_t bgx_id; int /*<<< orphan*/  reg_base; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_BGX ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct bgx*,scalar_t__) ; 
 int /*<<< orphan*/ ** bgx_vnic ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct lmac* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bgx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct lmac *lmac;
	struct bgx *bgx;
	uint8_t lmacid;

	lmac = FUNC2(dev);
	bgx = lmac->bgx;
	/* Disable all LMACs */
	for (lmacid = 0; lmacid < bgx->lmac_count; lmacid++)
		FUNC0(bgx, lmacid);

	bgx_vnic[bgx->bgx_id] = NULL;
	FUNC1(dev, SYS_RES_MEMORY,
	    FUNC5(bgx->reg_base), bgx->reg_base);
	FUNC3(bgx, M_BGX);
	FUNC4(dev);

	return (0);
}