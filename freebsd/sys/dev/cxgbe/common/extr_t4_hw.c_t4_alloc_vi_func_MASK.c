#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct fw_vi_cmd {unsigned int nmac; void* alloc_to_len16; int /*<<< orphan*/  norss_rsssize; int /*<<< orphan*/  nmac0; int /*<<< orphan*/  nmac1; int /*<<< orphan*/  nmac2; int /*<<< orphan*/  nmac3; int /*<<< orphan*/  mac; int /*<<< orphan*/  type_to_viid; int /*<<< orphan*/  portid_pkd; void* op_to_vfn; } ;
struct TYPE_2__ {scalar_t__ viid_smt_extn_support; } ;
struct adapter {TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int FUNC0 (struct fw_vi_cmd) ; 
 int /*<<< orphan*/  FW_VI_CMD ; 
 int F_FW_CMD_EXEC ; 
 int F_FW_CMD_REQUEST ; 
 int F_FW_CMD_WRITE ; 
 int F_FW_VI_CMD_ALLOC ; 
 int /*<<< orphan*/  F_FW_VI_CMD_NORSS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (unsigned int) ; 
 int FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int FUNC11 (unsigned int) ; 
 int FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 void* FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct fw_vi_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (struct adapter*,unsigned int,struct fw_vi_cmd*,int,struct fw_vi_cmd*) ; 

int FUNC20(struct adapter *adap, unsigned int mbox,
		     unsigned int port, unsigned int pf, unsigned int vf,
		     unsigned int nmac, u8 *mac, u16 *rss_size,
		     uint8_t *vfvld, uint16_t *vin,
		     unsigned int portfunc, unsigned int idstype)
{
	int ret;
	struct fw_vi_cmd c;

	FUNC18(&c, 0, sizeof(c));
	c.op_to_vfn = FUNC16(FUNC7(FW_VI_CMD) | F_FW_CMD_REQUEST |
				  F_FW_CMD_WRITE | F_FW_CMD_EXEC |
				  FUNC9(pf) | FUNC12(vf));
	c.alloc_to_len16 = FUNC16(F_FW_VI_CMD_ALLOC | FUNC0(c));
	c.type_to_viid = FUNC15(FUNC11(idstype) |
				     FUNC8(portfunc));
	c.portid_pkd = FUNC10(port);
	c.nmac = nmac - 1;
	if(!rss_size)
		c.norss_rsssize = F_FW_VI_CMD_NORSS;

	ret = FUNC19(adap, mbox, &c, sizeof(c), &c);
	if (ret)
		return ret;
	ret = FUNC5(FUNC13(c.type_to_viid));

	if (mac) {
		FUNC17(mac, c.mac, sizeof(c.mac));
		switch (nmac) {
		case 5:
			FUNC17(mac + 24, c.nmac3, sizeof(c.nmac3));
		case 4:
			FUNC17(mac + 18, c.nmac2, sizeof(c.nmac2));
		case 3:
			FUNC17(mac + 12, c.nmac1, sizeof(c.nmac1));
		case 2:
			FUNC17(mac + 6,  c.nmac0, sizeof(c.nmac0));
		}
	}
	if (rss_size)
		*rss_size = FUNC3(FUNC13(c.norss_rsssize));
	if (vfvld) {
		*vfvld = adap->params.viid_smt_extn_support ?
		    FUNC4(FUNC14(c.alloc_to_len16)) :
		    FUNC2(ret);
	}
	if (vin) {
		*vin = adap->params.viid_smt_extn_support ?
		    FUNC6(FUNC14(c.alloc_to_len16)) :
		    FUNC1(ret);
	}

	return ret;
}