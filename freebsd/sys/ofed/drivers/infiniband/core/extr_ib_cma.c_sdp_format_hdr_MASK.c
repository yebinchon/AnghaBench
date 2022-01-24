#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_3__ sin_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_10__ {int /*<<< orphan*/  ip6; TYPE_2__ ip4; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  ip6; TYPE_1__ ip4; } ;
struct sdp_hh {TYPE_5__ dst_addr; TYPE_4__ src_addr; int /*<<< orphan*/  port; int /*<<< orphan*/  majv_minv; } ;
struct rdma_id_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 scalar_t__ SDP_MAJ_VERSION ; 
 scalar_t__ FUNC0 (struct rdma_id_private*) ; 
 scalar_t__ FUNC1 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct rdma_id_private*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdp_hh*,int) ; 

__attribute__((used)) static int FUNC6(struct sdp_hh *sdp_hdr, struct rdma_id_private *id_priv)
{
	/*
	 * XXXCEM: CMA just sets the version itself rather than relying on
	 * passed in packet to have the major version set.  Should we?
	 */
	if (FUNC4(sdp_hdr->majv_minv) != SDP_MAJ_VERSION)
		return -EINVAL;

	if (FUNC1(id_priv) == AF_INET) {
		struct sockaddr_in *src4, *dst4;

		src4 = (struct sockaddr_in *) FUNC3(id_priv);
		dst4 = (struct sockaddr_in *) FUNC0(id_priv);

		FUNC5(sdp_hdr, 4);
		sdp_hdr->src_addr.ip4.addr = src4->sin_addr.s_addr;
		sdp_hdr->dst_addr.ip4.addr = dst4->sin_addr.s_addr;
		sdp_hdr->port = src4->sin_port;
	} else if (FUNC1(id_priv) == AF_INET6) {
		struct sockaddr_in6 *src6, *dst6;

		src6 = (struct sockaddr_in6 *) FUNC3(id_priv);
		dst6 = (struct sockaddr_in6 *) FUNC0(id_priv);

		FUNC5(sdp_hdr, 6);
		sdp_hdr->src_addr.ip6 = src6->sin6_addr;
		sdp_hdr->dst_addr.ip6 = dst6->sin6_addr;
		sdp_hdr->port = src6->sin6_port;
		FUNC2(&sdp_hdr->src_addr.ip6);
		FUNC2(&sdp_hdr->dst_addr.ip6);
	} else
		return -EAFNOSUPPORT;
	return 0;
}