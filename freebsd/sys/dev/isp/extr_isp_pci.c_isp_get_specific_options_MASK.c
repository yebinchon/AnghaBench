#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  prefix ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_9__ {int /*<<< orphan*/  isp_confopts; } ;
typedef  TYPE_1__ ispsoftc_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_11__ {int default_id; int def_role; int def_wwpn; scalar_t__ def_wwnn; int loop_down_limit; int gone_device_time; } ;
struct TYPE_10__ {int iid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISP_CFG_FCTAPE ; 
 int /*<<< orphan*/  ISP_CFG_FULL_DUPLEX ; 
 int /*<<< orphan*/  ISP_CFG_LPORT ; 
 int /*<<< orphan*/  ISP_CFG_LPORT_ONLY ; 
 int /*<<< orphan*/  ISP_CFG_NOFCTAPE ; 
 int /*<<< orphan*/  ISP_CFG_NPORT ; 
 int /*<<< orphan*/  ISP_CFG_NPORT_ONLY ; 
 int /*<<< orphan*/  ISP_CFG_OWNLOOPID ; 
 int ISP_DEFAULT_ROLES ; 
 TYPE_7__* FUNC0 (TYPE_1__*,int) ; 
#define  ISP_ROLE_BOTH 131 
#define  ISP_ROLE_INITIATOR 130 
#define  ISP_ROLE_NONE 129 
#define  ISP_ROLE_TARGET 128 
 TYPE_5__* FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int isp_gone_device_time ; 
 int isp_loop_down_limit ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,...) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 void* FUNC12 (char const*,char**,int) ; 

__attribute__((used)) static void
FUNC13(device_t dev, int chan, ispsoftc_t *isp)
{
	const char *sptr;
	int tval = 0;
	char prefix[12], name[16];

	if (chan == 0)
		prefix[0] = 0;
	else
		FUNC10(prefix, sizeof(prefix), "chan%d.", chan);
	FUNC10(name, sizeof(name), "%siid", prefix);
	if (FUNC8(FUNC5(dev), FUNC6(dev),
	    name, &tval)) {
		if (FUNC2(isp)) {
			FUNC0(isp, chan)->default_id = 109 - chan;
		} else {
#ifdef __sparc64__
			ISP_SPI_PC(isp, chan)->iid = OF_getscsinitid(dev);
#else
			FUNC1(isp, chan)->iid = 7;
#endif
		}
	} else {
		if (FUNC2(isp)) {
			FUNC0(isp, chan)->default_id = tval - chan;
		} else {
			FUNC1(isp, chan)->iid = tval;
		}
		isp->isp_confopts |= ISP_CFG_OWNLOOPID;
	}

	if (FUNC3(isp))
		return;

	tval = -1;
	FUNC10(name, sizeof(name), "%srole", prefix);
	if (FUNC8(FUNC5(dev), FUNC6(dev),
	    name, &tval) == 0) {
		switch (tval) {
		case ISP_ROLE_NONE:
		case ISP_ROLE_INITIATOR:
		case ISP_ROLE_TARGET:
		case ISP_ROLE_BOTH:
			FUNC7(dev, "Chan %d setting role to 0x%x\n", chan, tval);
			break;
		default:
			tval = -1;
			break;
		}
	}
	if (tval == -1) {
		tval = ISP_DEFAULT_ROLES;
	}
	FUNC0(isp, chan)->def_role = tval;

	tval = 0;
	FUNC10(name, sizeof(name), "%sfullduplex", prefix);
	if (FUNC8(FUNC5(dev), FUNC6(dev),
	    name, &tval) == 0 && tval != 0) {
		isp->isp_confopts |= ISP_CFG_FULL_DUPLEX;
	}
	sptr = NULL;
	FUNC10(name, sizeof(name), "%stopology", prefix);
	if (FUNC9(FUNC5(dev), FUNC6(dev),
	    name, (const char **) &sptr) == 0 && sptr != NULL) {
		if (FUNC11(sptr, "lport") == 0) {
			isp->isp_confopts |= ISP_CFG_LPORT;
		} else if (FUNC11(sptr, "nport") == 0) {
			isp->isp_confopts |= ISP_CFG_NPORT;
		} else if (FUNC11(sptr, "lport-only") == 0) {
			isp->isp_confopts |= ISP_CFG_LPORT_ONLY;
		} else if (FUNC11(sptr, "nport-only") == 0) {
			isp->isp_confopts |= ISP_CFG_NPORT_ONLY;
		}
	}

#ifdef ISP_FCTAPE_OFF
	isp->isp_confopts |= ISP_CFG_NOFCTAPE;
#else
	isp->isp_confopts |= ISP_CFG_FCTAPE;
#endif

	tval = 0;
	FUNC10(name, sizeof(name), "%snofctape", prefix);
	(void) FUNC8(FUNC5(dev), FUNC6(dev),
	    name, &tval);
	if (tval) {
		isp->isp_confopts &= ~ISP_CFG_FCTAPE;
		isp->isp_confopts |= ISP_CFG_NOFCTAPE;
	}

	tval = 0;
	FUNC10(name, sizeof(name), "%sfctape", prefix);
	(void) FUNC8(FUNC5(dev), FUNC6(dev),
	    name, &tval);
	if (tval) {
		isp->isp_confopts &= ~ISP_CFG_NOFCTAPE;
		isp->isp_confopts |= ISP_CFG_FCTAPE;
	}


	/*
	 * Because the resource_*_value functions can neither return
	 * 64 bit integer values, nor can they be directly coerced
	 * to interpret the right hand side of the assignment as
	 * you want them to interpret it, we have to force WWN
	 * hint replacement to specify WWN strings with a leading
	 * 'w' (e..g w50000000aaaa0001). Sigh.
	 */
	sptr = NULL;
	FUNC10(name, sizeof(name), "%sportwwn", prefix);
	tval = FUNC9(FUNC5(dev), FUNC6(dev),
	    name, (const char **) &sptr);
	if (tval == 0 && sptr != NULL && *sptr++ == 'w') {
		char *eptr = NULL;
		FUNC0(isp, chan)->def_wwpn = FUNC12(sptr, &eptr, 16);
		if (eptr < sptr + 16 || FUNC0(isp, chan)->def_wwpn == -1) {
			FUNC7(dev, "mangled portwwn hint '%s'\n", sptr);
			FUNC0(isp, chan)->def_wwpn = 0;
		}
	}

	sptr = NULL;
	FUNC10(name, sizeof(name), "%snodewwn", prefix);
	tval = FUNC9(FUNC5(dev), FUNC6(dev),
	    name, (const char **) &sptr);
	if (tval == 0 && sptr != NULL && *sptr++ == 'w') {
		char *eptr = NULL;
		FUNC0(isp, chan)->def_wwnn = FUNC12(sptr, &eptr, 16);
		if (eptr < sptr + 16 || FUNC0(isp, chan)->def_wwnn == 0) {
			FUNC7(dev, "mangled nodewwn hint '%s'\n", sptr);
			FUNC0(isp, chan)->def_wwnn = 0;
		}
	}

	tval = -1;
	FUNC10(name, sizeof(name), "%sloop_down_limit", prefix);
	(void) FUNC8(FUNC5(dev), FUNC6(dev),
	    name, &tval);
	if (tval >= 0 && tval < 0xffff) {
		FUNC0(isp, chan)->loop_down_limit = tval;
	} else {
		FUNC0(isp, chan)->loop_down_limit = isp_loop_down_limit;
	}

	tval = -1;
	FUNC10(name, sizeof(name), "%sgone_device_time", prefix);
	(void) FUNC8(FUNC5(dev), FUNC6(dev),
	    name, &tval);
	if (tval >= 0 && tval < 0xffff) {
		FUNC0(isp, chan)->gone_device_time = tval;
	} else {
		FUNC0(isp, chan)->gone_device_time = isp_gone_device_time;
	}
}