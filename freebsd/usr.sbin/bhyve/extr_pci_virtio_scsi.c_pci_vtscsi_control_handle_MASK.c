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
typedef  scalar_t__ uint32_t ;
struct pci_vtscsi_softc {int dummy; } ;
struct pci_vtscsi_ctrl_tmf {int dummy; } ;
struct pci_vtscsi_ctrl_an {int dummy; } ;

/* Variables and functions */
 scalar_t__ VIRTIO_SCSI_T_AN_QUERY ; 
 scalar_t__ VIRTIO_SCSI_T_TMF ; 
 int FUNC0 (struct pci_vtscsi_softc*,struct pci_vtscsi_ctrl_an*) ; 
 int FUNC1 (struct pci_vtscsi_softc*,struct pci_vtscsi_ctrl_tmf*) ; 

__attribute__((used)) static int
FUNC2(struct pci_vtscsi_softc *sc, void *buf,
    size_t bufsize)
{
	struct pci_vtscsi_ctrl_tmf *tmf;
	struct pci_vtscsi_ctrl_an *an;
	uint32_t type;

	type = *(uint32_t *)buf;

	if (type == VIRTIO_SCSI_T_TMF) {
		tmf = (struct pci_vtscsi_ctrl_tmf *)buf;
		return (FUNC1(sc, tmf));
	}

	if (type == VIRTIO_SCSI_T_AN_QUERY) {
		an = (struct pci_vtscsi_ctrl_an *)buf;
		return (FUNC0(sc, an));
	}

	return (0);
}