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

/* Variables and functions */
 size_t CARP_INET ; 
 size_t CARP_INET6 ; 
 int /*<<< orphan*/  IPPROTO_CARP ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/ * carp_attach_p ; 
 int /*<<< orphan*/ * carp_demote_adj_p ; 
 int /*<<< orphan*/ * carp_detach_p ; 
 int /*<<< orphan*/ * carp_forus_p ; 
 int /*<<< orphan*/ * carp_get_vhid_p ; 
 int /*<<< orphan*/ * carp_iamatch6_p ; 
 int /*<<< orphan*/ * carp_iamatch_p ; 
 int /*<<< orphan*/ * carp_ioctl_p ; 
 int /*<<< orphan*/ * carp_linkstate_p ; 
 int /*<<< orphan*/ * carp_macmatch6_p ; 
 int /*<<< orphan*/ * carp_master_p ; 
 int /*<<< orphan*/  carp_mtx ; 
 int /*<<< orphan*/ * carp_output_p ; 
 int /*<<< orphan*/  carp_sendall_task ; 
 int /*<<< orphan*/  carp_sx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* proto_reg ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 

__attribute__((used)) static void
FUNC7(void)
{

#ifdef INET
	if (proto_reg[CARP_INET] == 0) {
		(void)ipproto_unregister(IPPROTO_CARP);
		pf_proto_unregister(PF_INET, IPPROTO_CARP, SOCK_RAW);
		proto_reg[CARP_INET] = -1;
	}
	carp_iamatch_p = NULL;
#endif
#ifdef INET6
	if (proto_reg[CARP_INET6] == 0) {
		(void)ip6proto_unregister(IPPROTO_CARP);
		pf_proto_unregister(PF_INET6, IPPROTO_CARP, SOCK_RAW);
		proto_reg[CARP_INET6] = -1;
	}
	carp_iamatch6_p = NULL;
	carp_macmatch6_p = NULL;
#endif
	carp_ioctl_p = NULL;
	carp_attach_p = NULL;
	carp_detach_p = NULL;
	carp_get_vhid_p = NULL;
	carp_linkstate_p = NULL;
	carp_forus_p = NULL;
	carp_output_p = NULL;
	carp_demote_adj_p = NULL;
	carp_master_p = NULL;
	FUNC3(&carp_mtx);
	FUNC6(taskqueue_swi, &carp_sendall_task);
	FUNC2(&carp_mtx);
	FUNC5(&carp_sx);
}