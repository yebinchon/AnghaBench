#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_9__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; int rti_flags; int rti_addrs; TYPE_2__ sin_addr; struct sockaddr** rti_info; scalar_t__ sin_family; TYPE_1__* rti_ifp; } ;
struct sockaddr_dl {int sdl_len; scalar_t__ sdl_family; } ;
struct sockaddr {int dummy; } ;
struct rt_addrinfo {int sin_len; int rti_flags; int rti_addrs; TYPE_2__ sin_addr; struct sockaddr** rti_info; scalar_t__ sin_family; TYPE_1__* rti_ifp; } ;
struct flow_rec {int /*<<< orphan*/  fib; } ;
struct flow_hash_entry {int /*<<< orphan*/  head; int /*<<< orphan*/  mtx; } ;
struct TYPE_12__ {TYPE_2__ r_src; TYPE_2__ r_dst; } ;
struct TYPE_10__ {int bytes; int packets; int tcp_flags; int dst_mask; int src_mask; TYPE_7__ r; TYPE_2__ next_hop; int /*<<< orphan*/  fle_o_ifx; int /*<<< orphan*/  last; int /*<<< orphan*/  first; int /*<<< orphan*/  version; } ;
struct flow_entry {TYPE_3__ f; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  rt_gateway ;
typedef  TYPE_4__* priv_p ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_11__ {int /*<<< orphan*/  nfinfo_alloc_failed; int /*<<< orphan*/  zone; } ;
struct TYPE_8__ {int /*<<< orphan*/  if_index; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IPVERSION ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int NG_NETFLOW_CONF_NODSTLOOKUP ; 
 int NG_NETFLOW_CONF_NOSRCLOOKUP ; 
 int /*<<< orphan*/  NHR_REF ; 
 size_t RTAX_GATEWAY ; 
 size_t RTAX_NETMASK ; 
 int RTA_NETMASK ; 
 int RTF_GATEWAY ; 
 int RTF_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct flow_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct flow_rec*,TYPE_7__*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  fle_hash ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_in*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 int /*<<< orphan*/  time_uptime ; 
 struct flow_entry* FUNC7 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(priv_p priv, struct flow_hash_entry *hsh, struct flow_rec *r,
	int plen, uint8_t flags, uint8_t tcp_flags)
{
	struct flow_entry *fle;
	struct sockaddr_in sin, sin_mask;
	struct sockaddr_dl rt_gateway;
	struct rt_addrinfo info;

	FUNC4(&hsh->mtx, MA_OWNED);

	fle = FUNC7(priv->zone, priv, M_NOWAIT);
	if (fle == NULL) {
		priv->nfinfo_alloc_failed++;
		return (ENOMEM);
	}

	/*
	 * Now fle is totally ours. It is detached from all lists,
	 * we can safely edit it.
	 */
	fle->f.version = IPVERSION;
	FUNC1(r, &fle->f.r, sizeof(struct flow_rec));
	fle->f.bytes = plen;
	fle->f.packets = 1;
	fle->f.tcp_flags = tcp_flags;

	fle->f.first = fle->f.last = time_uptime;

	/*
	 * First we do route table lookup on destination address. So we can
	 * fill in out_ifx, dst_mask, nexthop, and dst_as in future releases.
	 */
	if ((flags & NG_NETFLOW_CONF_NODSTLOOKUP) == 0) {
		FUNC3(&sin, sizeof(sin));
		sin.sin_len = sizeof(struct sockaddr_in);
		sin.sin_family = AF_INET;
		sin.sin_addr = fle->f.r.r_dst;

		rt_gateway.sdl_len = sizeof(rt_gateway);
		sin_mask.sin_len = sizeof(struct sockaddr_in);
		FUNC3(&info, sizeof(info));

		info.rti_info[RTAX_GATEWAY] = (struct sockaddr *)&rt_gateway;
		info.rti_info[RTAX_NETMASK] = (struct sockaddr *)&sin_mask;

		if (FUNC6(r->fib, (struct sockaddr *)&sin, NHR_REF, 0,
		    &info) == 0) {
			fle->f.fle_o_ifx = info.rti_ifp->if_index;

			if (info.rti_flags & RTF_GATEWAY &&
			    rt_gateway.sdl_family == AF_INET)
				fle->f.next_hop =
				    ((struct sockaddr_in *)&rt_gateway)->sin_addr;

			if (info.rti_addrs & RTA_NETMASK)
				fle->f.dst_mask = FUNC2(sin_mask.sin_addr.s_addr);
			else if (info.rti_flags & RTF_HOST)
				/* Give up. We can't determine mask :( */
				fle->f.dst_mask = 32;

			FUNC5(&info);
		}
	}

	/* Do route lookup on source address, to fill in src_mask. */
	if ((flags & NG_NETFLOW_CONF_NOSRCLOOKUP) == 0) {
		FUNC3(&sin, sizeof(sin));
		sin.sin_len = sizeof(struct sockaddr_in);
		sin.sin_family = AF_INET;
		sin.sin_addr = fle->f.r.r_src;

		sin_mask.sin_len = sizeof(struct sockaddr_in);
		FUNC3(&info, sizeof(info));

		info.rti_info[RTAX_NETMASK] = (struct sockaddr *)&sin_mask;

		if (FUNC6(r->fib, (struct sockaddr *)&sin, 0, 0,
		    &info) == 0) {
			if (info.rti_addrs & RTA_NETMASK)
				fle->f.src_mask =
				    FUNC2(sin_mask.sin_addr.s_addr);
			else if (info.rti_flags & RTF_HOST)
				/* Give up. We can't determine mask :( */
				fle->f.src_mask = 32;
		}
	}

	/* Push new flow at the and of hash. */
	FUNC0(&hsh->head, fle, fle_hash);

	return (0);
}