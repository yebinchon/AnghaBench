#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct in6_addr {int dummy; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_5__ {scalar_t__ ps; } ;
struct rdma_id_private {TYPE_1__ id; int /*<<< orphan*/  afonly; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  ip6; TYPE_3__ ip4; } ;
struct cma_hdr {TYPE_4__ dst_addr; } ;
typedef  int /*<<< orphan*/  ip6_addr ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
#define  AF_IB 130 
#define  AF_INET 129 
#define  AF_INET6 128 
 scalar_t__ RDMA_PS_SDP ; 
 scalar_t__ FUNC0 (struct sockaddr*) ; 
 int FUNC1 (struct cma_hdr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_addr*) ; 
 struct sockaddr* FUNC3 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct in6_addr*,int) ; 
 int FUNC5 (struct rdma_id_private*,void const*,struct sockaddr*) ; 

__attribute__((used)) static bool FUNC6(struct rdma_id_private *id_priv,
				   const void *vhdr)
{
	const struct cma_hdr *hdr = vhdr;
	struct sockaddr *addr = FUNC3(id_priv);
	__be32 ip4_addr;
	struct in6_addr ip6_addr;

	if (FUNC0(addr) && !id_priv->afonly)
		return true;

	if (id_priv->id.ps == RDMA_PS_SDP)
		return FUNC5(id_priv, vhdr, addr);

	switch (addr->sa_family) {
	case AF_INET:
		ip4_addr = ((struct sockaddr_in *)addr)->sin_addr.s_addr;
		if (FUNC1(hdr) != 4)
			return false;
		if (!FUNC0(addr) &&
		    hdr->dst_addr.ip4.addr != ip4_addr)
			return false;
		break;
	case AF_INET6:
		ip6_addr = ((struct sockaddr_in6 *)addr)->sin6_addr;
		if (FUNC1(hdr) != 6)
			return false;
		FUNC2(&ip6_addr);
		if (!FUNC0(addr) &&
		    FUNC4(&hdr->dst_addr.ip6, &ip6_addr, sizeof(ip6_addr)))
			return false;
		break;
	case AF_IB:
		return true;
	default:
		return false;
	}

	return true;
}