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
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MFCHASHSIZE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * X_ip_mcast_src ; 
 int /*<<< orphan*/ * X_ip_mforward ; 
 int /*<<< orphan*/ * X_ip_mrouter_done ; 
 int /*<<< orphan*/ * X_ip_mrouter_get ; 
 int /*<<< orphan*/ * X_ip_mrouter_set ; 
 int /*<<< orphan*/ * X_ip_rsvp_force_done ; 
 int /*<<< orphan*/ * X_ip_rsvp_vif ; 
 int /*<<< orphan*/ * X_legal_vif_num ; 
 int /*<<< orphan*/ * X_mrt_ioctl ; 
 int /*<<< orphan*/ * X_rsvp_input ; 
 int /*<<< orphan*/ * if_detach_event_tag ; 
 int /*<<< orphan*/  if_detached_event ; 
 int /*<<< orphan*/  ifnet_departure_event ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ip_mcast_src ; 
 int /*<<< orphan*/ * ip_mforward ; 
 int /*<<< orphan*/  ip_mrouter_cnt ; 
 int /*<<< orphan*/ * ip_mrouter_done ; 
 int /*<<< orphan*/ * ip_mrouter_get ; 
 int /*<<< orphan*/ * ip_mrouter_set ; 
 int ip_mrouter_unloading ; 
 int /*<<< orphan*/ * ip_rsvp_force_done ; 
 int /*<<< orphan*/ * ip_rsvp_vif ; 
 int /*<<< orphan*/  ipv4_encap_cfg ; 
 int /*<<< orphan*/ * legal_vif_num ; 
 int /*<<< orphan*/  mfchashsize ; 
 int /*<<< orphan*/ * mrt_ioctl ; 
 int /*<<< orphan*/ * pim_encap_cookie ; 
 int /*<<< orphan*/  pim_squelch_wholepkt ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/ * rsvp_input_p ; 

__attribute__((used)) static int
FUNC15(module_t mod, int type, void *unused)
{

    switch (type) {
    case MOD_LOAD:
	FUNC6();

	if_detach_event_tag = FUNC1(ifnet_departure_event, 
	    if_detached_event, NULL, EVENTHANDLER_PRI_ANY);
	if (if_detach_event_tag == NULL) {
		FUNC14("ip_mroute: unable to register "
		    "ifnet_departure_event handler\n");
		FUNC5();
		return (EINVAL);
	}

	FUNC3();
	FUNC10();

	mfchashsize = MFCHASHSIZE;
	if (FUNC8("net.inet.ip.mfchashsize", &mfchashsize) &&
	    !FUNC13(mfchashsize)) {
		FUNC14("WARNING: %s not a power of 2; using default\n",
		    "net.inet.ip.mfchashsize");
		mfchashsize = MFCHASHSIZE;
	}

	pim_squelch_wholepkt = 0;
	FUNC8("net.inet.pim.squelch_wholepkt",
	    &pim_squelch_wholepkt);

	pim_encap_cookie = FUNC11(&ipv4_encap_cfg, NULL, M_WAITOK);
	if (pim_encap_cookie == NULL) {
		FUNC14("ip_mroute: unable to attach pim encap\n");
		FUNC9();
		FUNC2();
		FUNC5();
		return (EINVAL);
	}

	ip_mcast_src = X_ip_mcast_src;
	ip_mforward = X_ip_mforward;
	ip_mrouter_done = X_ip_mrouter_done;
	ip_mrouter_get = X_ip_mrouter_get;
	ip_mrouter_set = X_ip_mrouter_set;

	ip_rsvp_force_done = X_ip_rsvp_force_done;
	ip_rsvp_vif = X_ip_rsvp_vif;

	legal_vif_num = X_legal_vif_num;
	mrt_ioctl = X_mrt_ioctl;
	rsvp_input_p = X_rsvp_input;
	break;

    case MOD_UNLOAD:
	/*
	 * Typically module unload happens after the user-level
	 * process has shutdown the kernel services (the check
	 * below insures someone can't just yank the module out
	 * from under a running process).  But if the module is
	 * just loaded and then unloaded w/o starting up a user
	 * process we still need to cleanup.
	 */
	FUNC4();
	if (ip_mrouter_cnt != 0) {
	    FUNC7();
	    return (EINVAL);
	}
	ip_mrouter_unloading = 1;
	FUNC7();

	FUNC0(ifnet_departure_event, if_detach_event_tag);

	if (pim_encap_cookie) {
	    FUNC12(pim_encap_cookie);
	    pim_encap_cookie = NULL;
	}

	ip_mcast_src = NULL;
	ip_mforward = NULL;
	ip_mrouter_done = NULL;
	ip_mrouter_get = NULL;
	ip_mrouter_set = NULL;

	ip_rsvp_force_done = NULL;
	ip_rsvp_vif = NULL;

	legal_vif_num = NULL;
	mrt_ioctl = NULL;
	rsvp_input_p = NULL;

	FUNC9();
	FUNC2();
	FUNC5();
	break;

    default:
	return EOPNOTSUPP;
    }
    return 0;
}