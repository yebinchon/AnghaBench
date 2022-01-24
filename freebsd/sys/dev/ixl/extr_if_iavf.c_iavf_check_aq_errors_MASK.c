#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct TYPE_6__ {TYPE_2__ asq; TYPE_1__ arq; } ;
struct i40e_hw {TYPE_3__ aq; } ;
struct iavf_sc {int /*<<< orphan*/  init_state; int /*<<< orphan*/  dev; struct i40e_hw hw; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EIO ; 
 int I40E_VF_ARQLEN1_ARQCRIT_MASK ; 
 int I40E_VF_ARQLEN1_ARQOVFL_MASK ; 
 int I40E_VF_ARQLEN1_ARQVFE_MASK ; 
 int I40E_VF_ATQLEN1_ATQCRIT_MASK ; 
 int I40E_VF_ATQLEN1_ATQOVFL_MASK ; 
 int I40E_VF_ATQLEN1_ATQVFE_MASK ; 
 int /*<<< orphan*/  IAVF_RESET_REQUIRED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iavf_sc*) ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_sc*) ; 
 int FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct iavf_sc *sc)
{
	struct i40e_hw *hw = &sc->hw;
	device_t dev = sc->dev;
	u32 reg, oldreg;
	u8 aq_error = false;

	/* check for Admin queue errors */
	oldreg = reg = FUNC3(hw, hw->aq.arq.len);
	if (reg & I40E_VF_ARQLEN1_ARQVFE_MASK) {
		FUNC0(dev, "ARQ VF Error detected\n");
		reg &= ~I40E_VF_ARQLEN1_ARQVFE_MASK;
		aq_error = true;
	}
	if (reg & I40E_VF_ARQLEN1_ARQOVFL_MASK) {
		FUNC0(dev, "ARQ Overflow Error detected\n");
		reg &= ~I40E_VF_ARQLEN1_ARQOVFL_MASK;
		aq_error = true;
	}
	if (reg & I40E_VF_ARQLEN1_ARQCRIT_MASK) {
		FUNC0(dev, "ARQ Critical Error detected\n");
		reg &= ~I40E_VF_ARQLEN1_ARQCRIT_MASK;
		aq_error = true;
	}
	if (oldreg != reg)
		FUNC4(hw, hw->aq.arq.len, reg);

	oldreg = reg = FUNC3(hw, hw->aq.asq.len);
	if (reg & I40E_VF_ATQLEN1_ATQVFE_MASK) {
		FUNC0(dev, "ASQ VF Error detected\n");
		reg &= ~I40E_VF_ATQLEN1_ATQVFE_MASK;
		aq_error = true;
	}
	if (reg & I40E_VF_ATQLEN1_ATQOVFL_MASK) {
		FUNC0(dev, "ASQ Overflow Error detected\n");
		reg &= ~I40E_VF_ATQLEN1_ATQOVFL_MASK;
		aq_error = true;
	}
	if (reg & I40E_VF_ATQLEN1_ATQCRIT_MASK) {
		FUNC0(dev, "ASQ Critical Error detected\n");
		reg &= ~I40E_VF_ATQLEN1_ATQCRIT_MASK;
		aq_error = true;
	}
	if (oldreg != reg)
		FUNC4(hw, hw->aq.asq.len, reg);

	if (aq_error) {
		FUNC0(dev, "WARNING: Stopping VF!\n");
		/*
		 * A VF reset might not be enough to fix a problem here;
		 * a PF reset could be required.
		 */
		sc->init_state = IAVF_RESET_REQUIRED;
		FUNC2(sc);
		FUNC1(sc);
	}

	return (aq_error ? EIO : 0);
}