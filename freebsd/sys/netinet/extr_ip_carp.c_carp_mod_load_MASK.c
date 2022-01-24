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
struct protosw {int dummy; } ;

/* Variables and functions */
 size_t CARP_INET ; 
 size_t CARP_INET6 ; 
 int /*<<< orphan*/  IPPROTO_CARP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  carp_attach ; 
 int /*<<< orphan*/  carp_attach_p ; 
 int /*<<< orphan*/  carp_demote_adj ; 
 int /*<<< orphan*/  carp_demote_adj_p ; 
 int /*<<< orphan*/  carp_detach ; 
 int /*<<< orphan*/  carp_detach_p ; 
 int /*<<< orphan*/  carp_forus ; 
 int /*<<< orphan*/  carp_forus_p ; 
 int /*<<< orphan*/  carp_get_vhid ; 
 int /*<<< orphan*/  carp_get_vhid_p ; 
 int /*<<< orphan*/  carp_iamatch ; 
 int /*<<< orphan*/  carp_iamatch6 ; 
 int /*<<< orphan*/  carp_iamatch6_p ; 
 int /*<<< orphan*/  carp_iamatch_p ; 
 int /*<<< orphan*/  carp_ioctl ; 
 int /*<<< orphan*/  carp_ioctl_p ; 
 int /*<<< orphan*/  carp_linkstate ; 
 int /*<<< orphan*/  carp_linkstate_p ; 
 int /*<<< orphan*/  carp_list ; 
 int /*<<< orphan*/  carp_macmatch6 ; 
 int /*<<< orphan*/  carp_macmatch6_p ; 
 int /*<<< orphan*/  carp_master ; 
 int /*<<< orphan*/  carp_master_p ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  carp_mtx ; 
 int /*<<< orphan*/  carp_output ; 
 int /*<<< orphan*/  carp_output_p ; 
 int /*<<< orphan*/  carp_sx ; 
 int /*<<< orphan*/  in6_carp_protosw ; 
 struct protosw in_carp_protosw ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct protosw*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int* proto_reg ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC8(void)
{
	int err;

	FUNC4(&carp_mtx, "carp_mtx", NULL, MTX_DEF);
	FUNC7(&carp_sx, "carp_sx");
	FUNC0(&carp_list);
	carp_get_vhid_p = carp_get_vhid;
	carp_forus_p = carp_forus;
	carp_output_p = carp_output;
	carp_linkstate_p = carp_linkstate;
	carp_ioctl_p = carp_ioctl;
	carp_attach_p = carp_attach;
	carp_detach_p = carp_detach;
	carp_demote_adj_p = carp_demote_adj;
	carp_master_p = carp_master;
#ifdef INET6
	carp_iamatch6_p = carp_iamatch6;
	carp_macmatch6_p = carp_macmatch6;
	proto_reg[CARP_INET6] = pf_proto_register(PF_INET6,
	    (struct protosw *)&in6_carp_protosw);
	if (proto_reg[CARP_INET6]) {
		printf("carp: error %d attaching to PF_INET6\n",
		    proto_reg[CARP_INET6]);
		carp_mod_cleanup();
		return (proto_reg[CARP_INET6]);
	}
	err = ip6proto_register(IPPROTO_CARP);
	if (err) {
		printf("carp: error %d registering with INET6\n", err);
		carp_mod_cleanup();
		return (err);
	}
#endif
#ifdef INET
	carp_iamatch_p = carp_iamatch;
	proto_reg[CARP_INET] = pf_proto_register(PF_INET, &in_carp_protosw);
	if (proto_reg[CARP_INET]) {
		printf("carp: error %d attaching to PF_INET\n",
		    proto_reg[CARP_INET]);
		carp_mod_cleanup();
		return (proto_reg[CARP_INET]);
	}
	err = ipproto_register(IPPROTO_CARP);
	if (err) {
		printf("carp: error %d registering with INET\n", err);
		carp_mod_cleanup();
		return (err);
	}
#endif
	return (0);
}