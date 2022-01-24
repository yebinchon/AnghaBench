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
 scalar_t__ PCI_PRODUCT_BLUESTEEL_5501 ; 
 scalar_t__ PCI_PRODUCT_BLUESTEEL_5601 ; 
 scalar_t__ PCI_PRODUCT_BROADCOM_5801 ; 
 scalar_t__ PCI_PRODUCT_BROADCOM_5802 ; 
 scalar_t__ PCI_PRODUCT_BROADCOM_5805 ; 
 scalar_t__ PCI_PRODUCT_BROADCOM_5820 ; 
 scalar_t__ PCI_PRODUCT_BROADCOM_5821 ; 
 scalar_t__ PCI_PRODUCT_BROADCOM_5822 ; 
 scalar_t__ PCI_PRODUCT_BROADCOM_5823 ; 
 scalar_t__ PCI_PRODUCT_BROADCOM_5825 ; 
 scalar_t__ PCI_PRODUCT_SUN_5821 ; 
 scalar_t__ PCI_PRODUCT_SUN_SCA1K ; 
 scalar_t__ PCI_VENDOR_BLUESTEEL ; 
 scalar_t__ PCI_VENDOR_BROADCOM ; 
 scalar_t__ PCI_VENDOR_SUN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	if (FUNC1(dev) == PCI_VENDOR_SUN &&
	    (FUNC0(dev) == PCI_PRODUCT_SUN_5821 ||
	     FUNC0(dev) == PCI_PRODUCT_SUN_SCA1K))
		return (BUS_PROBE_DEFAULT);
	if (FUNC1(dev) == PCI_VENDOR_BLUESTEEL &&
	    (FUNC0(dev) == PCI_PRODUCT_BLUESTEEL_5501 ||
	     FUNC0(dev) == PCI_PRODUCT_BLUESTEEL_5601))
		return (BUS_PROBE_DEFAULT);
	if (FUNC1(dev) == PCI_VENDOR_BROADCOM &&
	    (FUNC0(dev) == PCI_PRODUCT_BROADCOM_5801 ||
	     FUNC0(dev) == PCI_PRODUCT_BROADCOM_5802 ||
	     FUNC0(dev) == PCI_PRODUCT_BROADCOM_5805 ||
	     FUNC0(dev) == PCI_PRODUCT_BROADCOM_5820 ||
	     FUNC0(dev) == PCI_PRODUCT_BROADCOM_5821 ||
	     FUNC0(dev) == PCI_PRODUCT_BROADCOM_5822 ||
	     FUNC0(dev) == PCI_PRODUCT_BROADCOM_5823 ||
	     FUNC0(dev) == PCI_PRODUCT_BROADCOM_5825
	     ))
		return (BUS_PROBE_DEFAULT);
	return (ENXIO);
}