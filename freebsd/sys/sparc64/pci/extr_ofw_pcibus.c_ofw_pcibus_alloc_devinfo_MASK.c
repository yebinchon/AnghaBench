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
struct pci_devinfo {int dummy; } ;
struct ofw_pcibus_devinfo {struct pci_devinfo opd_dinfo; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct ofw_pcibus_devinfo* FUNC0 (int,int /*<<< orphan*/ ,int) ; 

struct pci_devinfo *
FUNC1(device_t dev)
{
	struct ofw_pcibus_devinfo *dinfo;

	dinfo = FUNC0(sizeof(*dinfo), M_DEVBUF, M_WAITOK | M_ZERO);
	return (&dinfo->opd_dinfo);
}