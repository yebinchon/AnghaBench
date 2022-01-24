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
struct bgx {int bgx_id; scalar_t__ lmac_count; int /*<<< orphan*/ * reg_base; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BGX_NODE_ID_MASK ; 
 int BGX_NODE_ID_SHIFT ; 
 int ENXIO ; 
 int MAX_BGX_PER_CN88XX ; 
 int /*<<< orphan*/  M_BGX ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_CFG_REG_BAR_NUM ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (struct bgx*) ; 
 int /*<<< orphan*/  FUNC2 (struct bgx*) ; 
 int FUNC3 (struct bgx*) ; 
 int FUNC4 (struct bgx*,scalar_t__) ; 
 struct bgx** bgx_vnic ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct lmac* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct bgx*,int /*<<< orphan*/ ) ; 
 struct bgx* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct bgx *bgx;
	uint8_t lmacid;
	int err;
	int rid;
	struct lmac *lmac;

	bgx = FUNC10(sizeof(*bgx), M_BGX, (M_WAITOK | M_ZERO));
	bgx->dev = dev;

	lmac = FUNC7(dev);
	lmac->bgx = bgx;
	/* Enable bus mastering */
	FUNC13(dev);
	/* Allocate resources - configuration registers */
	rid = FUNC0(PCI_CFG_REG_BAR_NUM);
	bgx->reg_base = FUNC5(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (bgx->reg_base == NULL) {
		FUNC8(dev, "Could not allocate CSR memory space\n");
		err = ENXIO;
		goto err_disable_device;
	}

	bgx->bgx_id = (FUNC15(bgx->reg_base) >> BGX_NODE_ID_SHIFT) &
	    BGX_NODE_ID_MASK;
	bgx->bgx_id += FUNC11(bgx->reg_base) * MAX_BGX_PER_CN88XX;

	bgx_vnic[bgx->bgx_id] = bgx;
	FUNC1(bgx);

	err = FUNC3(bgx);
	if (err != 0)
		goto err_free_res;

	FUNC2(bgx);

	/* Enable all LMACs */
	for (lmacid = 0; lmacid < bgx->lmac_count; lmacid++) {
		err = FUNC4(bgx, lmacid);
		if (err) {
			FUNC8(dev, "BGX%d failed to enable lmac%d\n",
				bgx->bgx_id, lmacid);
			goto err_free_res;
		}
	}

	return (0);

err_free_res:
	bgx_vnic[bgx->bgx_id] = NULL;
	FUNC6(dev, SYS_RES_MEMORY,
	    FUNC14(bgx->reg_base), bgx->reg_base);
err_disable_device:
	FUNC9(bgx, M_BGX);
	FUNC12(dev);

	return (err);
}