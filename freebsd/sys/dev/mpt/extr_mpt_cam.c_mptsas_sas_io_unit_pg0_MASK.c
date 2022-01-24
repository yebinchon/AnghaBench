#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mptsas_portinfo {int num_phys; struct mptsas_phyinfo* phy_info; } ;
struct mptsas_phyinfo {int phy_num; int /*<<< orphan*/  handle; int /*<<< orphan*/  negotiated_link_rate; int /*<<< orphan*/  port_id; } ;
struct mpt_softc {int dummy; } ;
struct TYPE_10__ {int ExtPageLength; } ;
struct TYPE_9__ {int NumPhys; TYPE_1__* PhyData; } ;
struct TYPE_8__ {int /*<<< orphan*/  ControllerDevHandle; int /*<<< orphan*/  NegotiatedLinkRate; int /*<<< orphan*/  Port; } ;
typedef  TYPE_2__ SasIOUnitPage0_t ;
typedef  TYPE_3__ ConfigExtendedPageHeader_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  MPI_CONFIG_ACTION_PAGE_READ_CURRENT ; 
 int /*<<< orphan*/  MPI_CONFIG_EXTPAGETYPE_SAS_IO_UNIT ; 
 int /*<<< orphan*/  MPI_SASIOUNITPAGE0_PAGEVERSION ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mpt_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mpt_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,TYPE_2__*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct mpt_softc *mpt, struct mptsas_portinfo *portinfo)
{
	ConfigExtendedPageHeader_t hdr;
	struct mptsas_phyinfo *phyinfo;
	SasIOUnitPage0_t *buffer;
	int error, len, i;

	error = FUNC3(mpt, MPI_SASIOUNITPAGE0_PAGEVERSION,
				       0, 0, MPI_CONFIG_EXTPAGETYPE_SAS_IO_UNIT,
				       &hdr, 0, 10000);
	if (error)
		goto out;
	if (hdr.ExtPageLength == 0) {
		error = ENXIO;
		goto out;
	}

	len = hdr.ExtPageLength * 4;
	buffer = FUNC2(len, M_DEVBUF, M_NOWAIT|M_ZERO);
	if (buffer == NULL) {
		error = ENOMEM;
		goto out;
	}

	error = FUNC4(mpt, MPI_CONFIG_ACTION_PAGE_READ_CURRENT,
				     0, &hdr, buffer, len, 0, 10000);
	if (error) {
		FUNC0(buffer, M_DEVBUF);
		goto out;
	}

	portinfo->num_phys = buffer->NumPhys;
	portinfo->phy_info = FUNC2(sizeof(*portinfo->phy_info) *
	    portinfo->num_phys, M_DEVBUF, M_NOWAIT|M_ZERO);
	if (portinfo->phy_info == NULL) {
		FUNC0(buffer, M_DEVBUF);
		error = ENOMEM;
		goto out;
	}

	for (i = 0; i < portinfo->num_phys; i++) {
		phyinfo = &portinfo->phy_info[i];
		phyinfo->phy_num = i;
		phyinfo->port_id = buffer->PhyData[i].Port;
		phyinfo->negotiated_link_rate =
		    buffer->PhyData[i].NegotiatedLinkRate;
		phyinfo->handle =
		    FUNC1(buffer->PhyData[i].ControllerDevHandle);
	}

	FUNC0(buffer, M_DEVBUF);
out:
	return (error);
}