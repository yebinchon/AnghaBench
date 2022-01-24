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
struct mptsas_portinfo {int num_phys; struct mptsas_phyinfo* phy_info; } ;
struct TYPE_2__ {int phy_num; scalar_t__ dev_handle; } ;
struct mptsas_phyinfo {int phy_num; TYPE_1__ attached; TYPE_1__ identify; scalar_t__ handle; } ;
struct mpt_softc {struct mptsas_portinfo* sas_portinfo; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MPI_SAS_DEVICE_PGAD_FORM_HANDLE ; 
 int MPI_SAS_DEVICE_PGAD_FORM_SHIFT ; 
 int MPI_SAS_PHY_PGAD_FORM_PHY_NUMBER ; 
 int MPI_SAS_PHY_PGAD_FORM_SHIFT ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct mptsas_portinfo*,int /*<<< orphan*/ ) ; 
 struct mptsas_portinfo* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mpt_softc*,TYPE_1__*,int,scalar_t__) ; 
 int FUNC3 (struct mpt_softc*,struct mptsas_portinfo*) ; 
 int FUNC4 (struct mpt_softc*,struct mptsas_phyinfo*,int,int) ; 

__attribute__((used)) static int
FUNC5(struct mpt_softc *mpt)
{
	struct mptsas_portinfo *portinfo;
	struct mptsas_phyinfo *phyinfo;
	int error, i;

	portinfo = FUNC1(sizeof(*portinfo), M_DEVBUF, M_NOWAIT|M_ZERO);
	if (portinfo == NULL)
		return (ENOMEM);

	error = FUNC3(mpt, portinfo);
	if (error) {
		FUNC0(portinfo, M_DEVBUF);
		return (0);
	}

	for (i = 0; i < portinfo->num_phys; i++) {
		phyinfo = &portinfo->phy_info[i];
		error = FUNC4(mpt, phyinfo,
		    (MPI_SAS_PHY_PGAD_FORM_PHY_NUMBER <<
		    MPI_SAS_PHY_PGAD_FORM_SHIFT), i);
		if (error)
			break;
		error = FUNC2(mpt, &phyinfo->identify,
		    (MPI_SAS_DEVICE_PGAD_FORM_HANDLE <<
		    MPI_SAS_DEVICE_PGAD_FORM_SHIFT),
		    phyinfo->handle);
		if (error)
			break;
		phyinfo->identify.phy_num = phyinfo->phy_num = i;
		if (phyinfo->attached.dev_handle)
			error = FUNC2(mpt,
			    &phyinfo->attached,
			    (MPI_SAS_DEVICE_PGAD_FORM_HANDLE <<
			    MPI_SAS_DEVICE_PGAD_FORM_SHIFT),
			    phyinfo->attached.dev_handle);
		if (error)
			break;
	}
	mpt->sas_portinfo = portinfo;
	return (0);
}