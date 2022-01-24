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
typedef  size_t uint16_t ;
typedef  int /*<<< orphan*/  sysctl_name ;
struct TYPE_2__ {int /*<<< orphan*/  ftl; struct ixl_pf* back; } ;
struct ixl_vf {size_t vf_num; int /*<<< orphan*/  ctx; TYPE_1__ vsi; int /*<<< orphan*/  vf_flags; int /*<<< orphan*/  mac; } ;
struct ixl_pf {struct ixl_vf* vfs; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int QUEUE_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VF_FLAG_ENABLED ; 
 int /*<<< orphan*/  VF_FLAG_MAC_ANTI_SPOOF ; 
 int /*<<< orphan*/  VF_FLAG_PROMISC_CAP ; 
 int /*<<< orphan*/  VF_FLAG_SET_MAC_CAP ; 
 int /*<<< orphan*/  VF_FLAG_VLAN_CAP ; 
 int /*<<< orphan*/  FUNC1 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ixl_pf* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixl_pf*,struct ixl_vf*) ; 
 int FUNC5 (struct ixl_pf*,struct ixl_vf*,int) ; 
 int FUNC6 (struct ixl_pf*,struct ixl_vf*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,char*) ; 
 void* FUNC8 (int /*<<< orphan*/  const*,char*,size_t*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC10 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,size_t) ; 

int
FUNC12(if_ctx_t ctx, uint16_t vfnum, const nvlist_t *params)
{
	struct ixl_pf *pf = FUNC2(ctx);
	device_t dev = pf->dev;
	char sysctl_name[QUEUE_NAME_LEN];
	struct ixl_vf *vf;
	const void *mac;
	size_t size;
	int error;
	int vf_num_queues;

	vf = &pf->vfs[vfnum];
	vf->vf_num = vfnum;
	vf->vsi.back = pf;
	vf->vf_flags = VF_FLAG_ENABLED;
	FUNC0(&vf->vsi.ftl);

	/* Reserve queue allocation from PF */
	vf_num_queues = FUNC10(params, "num-queues");
	error = FUNC5(pf, vf, vf_num_queues);
	if (error != 0)
		goto out;

	error = FUNC6(pf, vf);
	if (error != 0)
		goto out;

	if (FUNC7(params, "mac-addr")) {
		mac = FUNC8(params, "mac-addr", &size);
		FUNC1(mac, vf->mac, ETHER_ADDR_LEN);

		if (FUNC9(params, "allow-set-mac"))
			vf->vf_flags |= VF_FLAG_SET_MAC_CAP;
	} else
		/*
		 * If the administrator has not specified a MAC address then
		 * we must allow the VF to choose one.
		 */
		vf->vf_flags |= VF_FLAG_SET_MAC_CAP;

	if (FUNC9(params, "mac-anti-spoof"))
		vf->vf_flags |= VF_FLAG_MAC_ANTI_SPOOF;

	if (FUNC9(params, "allow-promisc"))
		vf->vf_flags |= VF_FLAG_PROMISC_CAP;

	vf->vf_flags |= VF_FLAG_VLAN_CAP;

	/* VF needs to be reset before it can be used */
	FUNC4(pf, vf);
out:
	if (error == 0) {
		FUNC11(sysctl_name, sizeof(sysctl_name), "vf%d", vfnum);
		FUNC3(dev, &vf->vsi, &vf->ctx, sysctl_name);
	}

	return (error);
}