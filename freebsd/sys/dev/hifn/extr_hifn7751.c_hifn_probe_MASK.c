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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ PCI_PRODUCT_HIFN_7751 ; 
 scalar_t__ PCI_PRODUCT_HIFN_7811 ; 
 scalar_t__ PCI_PRODUCT_HIFN_7951 ; 
 scalar_t__ PCI_PRODUCT_HIFN_7955 ; 
 scalar_t__ PCI_PRODUCT_HIFN_7956 ; 
 scalar_t__ PCI_PRODUCT_INVERTEX_AEON ; 
 scalar_t__ PCI_PRODUCT_NETSEC_7751 ; 
 scalar_t__ PCI_VENDOR_HIFN ; 
 scalar_t__ PCI_VENDOR_INVERTEX ; 
 scalar_t__ PCI_VENDOR_NETSEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	if (FUNC1(dev) == PCI_VENDOR_INVERTEX &&
	    FUNC0(dev) == PCI_PRODUCT_INVERTEX_AEON)
		return (BUS_PROBE_DEFAULT);
	if (FUNC1(dev) == PCI_VENDOR_HIFN &&
	    (FUNC0(dev) == PCI_PRODUCT_HIFN_7751 ||
	     FUNC0(dev) == PCI_PRODUCT_HIFN_7951 ||
	     FUNC0(dev) == PCI_PRODUCT_HIFN_7955 ||
	     FUNC0(dev) == PCI_PRODUCT_HIFN_7956 ||
	     FUNC0(dev) == PCI_PRODUCT_HIFN_7811))
		return (BUS_PROBE_DEFAULT);
	if (FUNC1(dev) == PCI_VENDOR_NETSEC &&
	    FUNC0(dev) == PCI_PRODUCT_NETSEC_7751)
		return (BUS_PROBE_DEFAULT);
	return (ENXIO);
}