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
struct nicpf {int flags; int /*<<< orphan*/  check_link_mtx; int /*<<< orphan*/  check_link; int /*<<< orphan*/  rss_ind_tbl_size; int /*<<< orphan*/  reg_base; int /*<<< orphan*/  node; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  NIC_MAX_RSS_IDR_TBL_SIZE ; 
 int NIC_TNS_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nicpf* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nicpf*) ; 
 int /*<<< orphan*/  FUNC8 (struct nicpf*) ; 
 int FUNC9 (struct nicpf*) ; 
 int /*<<< orphan*/  FUNC10 (struct nicpf*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct nicpf*) ; 
 int /*<<< orphan*/  FUNC12 (struct nicpf*) ; 
 int FUNC13 (struct nicpf*) ; 
 int /*<<< orphan*/  FUNC14 (struct nicpf*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct nicpf *nic;
	int err;

	nic = FUNC1(dev);
	nic->dev = dev;

	/* Enable bus mastering */
	FUNC16(dev);

	/* Allocate PCI resources */
	err = FUNC13(nic);
	if (err != 0) {
		FUNC2(dev, "Could not allocate PCI resources\n");
		return (err);
	}

	nic->node = FUNC6(nic->reg_base);

	/* Enable Traffic Network Switch (TNS) bypass mode by default */
	nic->flags &= ~NIC_TNS_ENABLED;
	FUNC10(nic);

	/* Initialize hardware */
	FUNC7(nic);

	/* Set RSS TBL size for each VF */
	nic->rss_ind_tbl_size = NIC_MAX_RSS_IDR_TBL_SIZE;

	/* Setup interrupts */
	err = FUNC9(nic);
	if (err != 0)
		goto err_free_res;

	/* Configure SRIOV */
	err = FUNC11(dev, nic);
	if (err != 0)
		goto err_free_intr;

	if (nic->flags & NIC_TNS_ENABLED)
		return (0);

	FUNC3(&nic->check_link_mtx, "VNIC PF link poll", NULL, MTX_DEF);
	/* Register physical link status poll callout */
	FUNC0(&nic->check_link, &nic->check_link_mtx, 0);
	FUNC4(&nic->check_link_mtx);
	FUNC8(nic);
	FUNC5(&nic->check_link_mtx);

	return (0);

err_free_intr:
	FUNC12(nic);
err_free_res:
	FUNC14(nic);
	FUNC15(dev);

	return (err);
}