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
typedef  int u32 ;
struct drm_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int DRM_PCIE_SPEED_25 ; 
 int DRM_PCIE_SPEED_50 ; 
 int DRM_PCIE_SPEED_80 ; 
 int EINVAL ; 
 int PCIEM_LINK_CAP_MAX_SPEED ; 
 scalar_t__ PCIER_LINK_CAP ; 
 scalar_t__ PCIER_LINK_CAP2 ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 int PCI_EXP_LNKCAP2_SLS_2_5GB ; 
 int PCI_EXP_LNKCAP2_SLS_5_0GB ; 
 int PCI_EXP_LNKCAP2_SLS_8_0GB ; 
 scalar_t__ PCI_VENDOR_ID_SERVERWORKS ; 
 scalar_t__ PCI_VENDOR_ID_VIA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 

int FUNC7(struct drm_device *dev, u32 *mask)
{
	device_t root;
	int pos;
	u32 lnkcap = 0, lnkcap2 = 0;

	*mask = 0;
	if (!FUNC2(dev))
		return -EINVAL;

	root =
	    FUNC1( /* pcib             */
	    FUNC1( /* `-- pci          */
	    FUNC1( /*     `-- vgapci   */
	    dev->dev)));       /*         `-- drmn */

	pos = 0;
	FUNC3(root, PCIY_EXPRESS, &pos);
	if (!pos)
		return -EINVAL;

	/* we've been informed via and serverworks don't make the cut */
	if (FUNC5(root) == PCI_VENDOR_ID_VIA ||
	    FUNC5(root) == PCI_VENDOR_ID_SERVERWORKS)
		return -EINVAL;

	lnkcap = FUNC6(root, pos + PCIER_LINK_CAP, 4);
	lnkcap2 = FUNC6(root, pos + PCIER_LINK_CAP2, 4);

	lnkcap &= PCIEM_LINK_CAP_MAX_SPEED;
	lnkcap2 &= 0xfe;

#define	PCI_EXP_LNKCAP2_SLS_2_5GB 0x02	/* Supported Link Speed 2.5GT/s */
#define	PCI_EXP_LNKCAP2_SLS_5_0GB 0x04	/* Supported Link Speed 5.0GT/s */
#define	PCI_EXP_LNKCAP2_SLS_8_0GB 0x08	/* Supported Link Speed 8.0GT/s */

	if (lnkcap2) { /* PCIE GEN 3.0 */
		if (lnkcap2 & PCI_EXP_LNKCAP2_SLS_2_5GB)
			*mask |= DRM_PCIE_SPEED_25;
		if (lnkcap2 & PCI_EXP_LNKCAP2_SLS_5_0GB)
			*mask |= DRM_PCIE_SPEED_50;
		if (lnkcap2 & PCI_EXP_LNKCAP2_SLS_8_0GB)
			*mask |= DRM_PCIE_SPEED_80;
	} else {
		if (lnkcap & 1)
			*mask |= DRM_PCIE_SPEED_25;
		if (lnkcap & 2)
			*mask |= DRM_PCIE_SPEED_50;
	}

	FUNC0("probing gen 2 caps for device %x:%x = %x/%x\n", FUNC5(root), FUNC4(root), lnkcap, lnkcap2);
	return 0;
}