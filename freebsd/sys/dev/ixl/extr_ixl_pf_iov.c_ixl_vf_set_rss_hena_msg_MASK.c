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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  u32 ;
struct virtchnl_rss_hena {int hena; } ;
struct ixl_vf {int /*<<< orphan*/  vf_num; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {int /*<<< orphan*/  dev; struct i40e_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  I40E_ERR_PARAM ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIRTCHNL_OP_SET_RSS_HENA ; 
 int /*<<< orphan*/  FUNC2 (struct ixl_pf*,struct ixl_vf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ixl_pf*,struct ixl_vf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ixl_pf *pf, struct ixl_vf *vf, void *msg,
    uint16_t msg_size)
{
	struct i40e_hw *hw;
	struct virtchnl_rss_hena *hena;

	hw = &pf->hw;

	if (msg_size < sizeof(*hena)) {
		FUNC2(pf, vf, VIRTCHNL_OP_SET_RSS_HENA,
		    I40E_ERR_PARAM);
		return;
	}

	hena = msg;

	/* Set HENA */
	FUNC3(hw, FUNC1(0, vf->vf_num), (u32)hena->hena);
	FUNC3(hw, FUNC1(1, vf->vf_num), (u32)(hena->hena >> 32));

	FUNC0(pf->dev, "VF %d: Programmed HENA with 0x%016lx",
	    vf->vf_num, hena->hena);

	FUNC4(pf, vf, VIRTCHNL_OP_SET_RSS_HENA);
}