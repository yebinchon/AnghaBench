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
struct TestContext {scalar_t__ nr_hdr_len; int /*<<< orphan*/  nr_mode; int /*<<< orphan*/  ifname_ext; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_REG_ALL_NIC ; 
 scalar_t__ VIRTIO_NET_HDR_LEN ; 
 scalar_t__ VIRTIO_NET_HDR_LEN_WITH_MERGEABLE_RXBUFS ; 
 int FUNC0 (struct TestContext*) ; 
 int FUNC1 (struct TestContext*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC3(struct TestContext *ctx)
{
	int ret;

	FUNC2(ctx->ifname_ext, "vale:eph0", sizeof(ctx->ifname_ext));
	ctx->nr_mode = NR_REG_ALL_NIC;
	if ((ret = FUNC1(ctx))) {
		return ret;
	}
	/* Try to set and get all the acceptable values. */
	ctx->nr_hdr_len = VIRTIO_NET_HDR_LEN_WITH_MERGEABLE_RXBUFS;
	if ((ret = FUNC0(ctx))) {
		return ret;
	}
	ctx->nr_hdr_len = 0;
	if ((ret = FUNC0(ctx))) {
		return ret;
	}
	ctx->nr_hdr_len = VIRTIO_NET_HDR_LEN;
	if ((ret = FUNC0(ctx))) {
		return ret;
	}
	return 0;
}