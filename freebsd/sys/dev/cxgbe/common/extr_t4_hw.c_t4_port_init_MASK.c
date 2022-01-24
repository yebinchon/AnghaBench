#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct vi_info {int viid; int rss_base; int /*<<< orphan*/  vin; int /*<<< orphan*/  vfvld; int /*<<< orphan*/  rss_size; } ;
struct port_info {int port_id; int tx_chan; int lport; int /*<<< orphan*/  rx_e_chan_map; int /*<<< orphan*/  mps_bg_map; struct vi_info* vi; } ;
struct TYPE_3__ {int r_caps; } ;
struct TYPE_4__ {int portvec; TYPE_1__ vfres; } ;
struct adapter {int flags; TYPE_2__ params; } ;

/* Variables and functions */
 int FW_CMD_CAP_PORT ; 
 int /*<<< orphan*/  FW_PARAMS_MNEM_DEV ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DEV_RSSINFO ; 
 int IS_VF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 struct port_info* FUNC3 (struct adapter*,int) ; 
 int FUNC4 (struct adapter*,int,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct port_info*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct adapter*,int,int,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct port_info*) ; 

int FUNC10(struct adapter *adap, int mbox, int pf, int vf, int port_id)
{
	u8 addr[6];
	int ret, i, j;
	struct port_info *p = FUNC3(adap, port_id);
	u32 param, val;
	struct vi_info *vi = &p->vi[0];

	for (i = 0, j = -1; i <= p->port_id; i++) {
		do {
			j++;
		} while ((adap->params.portvec & (1 << j)) == 0);
	}

	p->tx_chan = j;
	p->mps_bg_map = FUNC5(adap, j);
	p->rx_e_chan_map = FUNC6(adap, j);
	p->lport = j;

	if (!(adap->flags & IS_VF) ||
	    adap->params.vfres.r_caps & FW_CMD_CAP_PORT) {
 		FUNC9(p);
	}

	ret = FUNC4(adap, mbox, j, pf, vf, 1, addr, &vi->rss_size,
	    &vi->vfvld, &vi->vin);
	if (ret < 0)
		return ret;

	vi->viid = ret;
	FUNC7(p, addr);

	param = FUNC0(FW_PARAMS_MNEM_DEV) |
	    FUNC1(FW_PARAMS_PARAM_DEV_RSSINFO) |
	    FUNC2(vi->viid);
	ret = FUNC8(adap, mbox, pf, vf, 1, &param, &val);
	if (ret)
		vi->rss_base = 0xffff;
	else {
		/* MPASS((val >> 16) == rss_size); */
		vi->rss_base = val & 0xffff;
	}

	return 0;
}