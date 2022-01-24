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
struct socket {scalar_t__ so_pcb; int /*<<< orphan*/  so_fibnum; int /*<<< orphan*/  so_cred; } ;
struct inpcbinfo {int /*<<< orphan*/  ipi_zone; scalar_t__ ipi_gencnt; int /*<<< orphan*/  ipi_count; int /*<<< orphan*/  ipi_listhead; } ;
struct TYPE_4__ {int /*<<< orphan*/  ro_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  inc_fibnum; } ;
struct inpcb {int /*<<< orphan*/  inp_cred; TYPE_2__ inp_route; int /*<<< orphan*/  inp_refcount; scalar_t__ inp_gencnt; int /*<<< orphan*/  inp_flags; int /*<<< orphan*/  inp_vflag; TYPE_1__ inp_inc; struct socket* inp_socket; struct inpcbinfo* inp_pcbinfo; int /*<<< orphan*/  inp_numa_domain; int /*<<< orphan*/  inp_start_zero; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct inpcb*,int /*<<< orphan*/ ) ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  IN6P_AUTOFLOWLABEL ; 
 int /*<<< orphan*/  IN6P_IPV6_V6ONLY ; 
 int /*<<< orphan*/  FUNC1 (struct inpcbinfo*) ; 
 int /*<<< orphan*/  INP_IPV6PROTO ; 
 int /*<<< orphan*/  FUNC2 (struct inpcbinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcbinfo*) ; 
 scalar_t__ FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct inpcb*) ; 
 int /*<<< orphan*/  M_NODOM ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  RT_LLE_CACHE ; 
 scalar_t__ V_ip6_auto_flowlabel ; 
 scalar_t__ V_ip6_v6only ; 
 struct inpcbinfo V_tcbinfo ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inp_list ; 
 int /*<<< orphan*/  inp_zero_size ; 
 int FUNC10 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC11 (struct socket*,struct inpcb*) ; 
 int /*<<< orphan*/  FUNC12 (struct inpcb*) ; 
 int FUNC13 (struct inpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 struct inpcb* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct inpcb*) ; 

int
FUNC17(struct socket *so, struct inpcbinfo *pcbinfo)
{
	struct inpcb *inp;
	int error;

#ifdef INVARIANTS
	if (pcbinfo == &V_tcbinfo) {
		NET_EPOCH_ASSERT();
	} else {
		INP_INFO_WLOCK_ASSERT(pcbinfo);
	}
#endif

	error = 0;
	inp = FUNC15(pcbinfo->ipi_zone, M_NOWAIT);
	if (inp == NULL)
		return (ENOBUFS);
	FUNC7(&inp->inp_start_zero, inp_zero_size);
#ifdef NUMA
	inp->inp_numa_domain = M_NODOM;
#endif
	inp->inp_pcbinfo = pcbinfo;
	inp->inp_socket = so;
	inp->inp_cred = FUNC9(so->so_cred);
	inp->inp_inc.inc_fibnum = so->so_fibnum;
#ifdef MAC
	error = mac_inpcb_init(inp, M_NOWAIT);
	if (error != 0)
		goto out;
	mac_inpcb_create(so, inp);
#endif
#if defined(IPSEC) || defined(IPSEC_SUPPORT)
	error = ipsec_init_pcbpolicy(inp);
	if (error != 0) {
#ifdef MAC
		mac_inpcb_destroy(inp);
#endif
		goto out;
	}
#endif /*IPSEC*/
#ifdef INET6
	if (INP_SOCKAF(so) == AF_INET6) {
		inp->inp_vflag |= INP_IPV6PROTO;
		if (V_ip6_v6only)
			inp->inp_flags |= IN6P_IPV6_V6ONLY;
	}
#endif
	FUNC5(inp);
	FUNC2(pcbinfo);
	FUNC0(pcbinfo->ipi_listhead, inp, inp_list);
	pcbinfo->ipi_count++;
	so->so_pcb = (caddr_t)inp;
#ifdef INET6
	if (V_ip6_auto_flowlabel)
		inp->inp_flags |= IN6P_AUTOFLOWLABEL;
#endif
	inp->inp_gencnt = ++pcbinfo->ipi_gencnt;
	FUNC14(&inp->inp_refcount, 1);	/* Reference from inpcbinfo */

	/*
	 * Routes in inpcb's can cache L2 as well; they are guaranteed
	 * to be cleaned up.
	 */
	inp->inp_route.ro_flags = RT_LLE_CACHE;
	FUNC3(pcbinfo);
#if defined(IPSEC) || defined(IPSEC_SUPPORT) || defined(MAC)
out:
	if (error != 0) {
		crfree(inp->inp_cred);
		uma_zfree(pcbinfo->ipi_zone, inp);
	}
#endif
	return (error);
}