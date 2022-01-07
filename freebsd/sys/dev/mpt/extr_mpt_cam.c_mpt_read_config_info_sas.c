
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mptsas_portinfo {int num_phys; struct mptsas_phyinfo* phy_info; } ;
struct TYPE_2__ {int phy_num; scalar_t__ dev_handle; } ;
struct mptsas_phyinfo {int phy_num; TYPE_1__ attached; TYPE_1__ identify; scalar_t__ handle; } ;
struct mpt_softc {struct mptsas_portinfo* sas_portinfo; } ;


 int ENOMEM ;
 int MPI_SAS_DEVICE_PGAD_FORM_HANDLE ;
 int MPI_SAS_DEVICE_PGAD_FORM_SHIFT ;
 int MPI_SAS_PHY_PGAD_FORM_PHY_NUMBER ;
 int MPI_SAS_PHY_PGAD_FORM_SHIFT ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int free (struct mptsas_portinfo*,int ) ;
 struct mptsas_portinfo* malloc (int,int ,int) ;
 int mptsas_sas_device_pg0 (struct mpt_softc*,TYPE_1__*,int,scalar_t__) ;
 int mptsas_sas_io_unit_pg0 (struct mpt_softc*,struct mptsas_portinfo*) ;
 int mptsas_sas_phy_pg0 (struct mpt_softc*,struct mptsas_phyinfo*,int,int) ;

__attribute__((used)) static int
mpt_read_config_info_sas(struct mpt_softc *mpt)
{
 struct mptsas_portinfo *portinfo;
 struct mptsas_phyinfo *phyinfo;
 int error, i;

 portinfo = malloc(sizeof(*portinfo), M_DEVBUF, M_NOWAIT|M_ZERO);
 if (portinfo == ((void*)0))
  return (ENOMEM);

 error = mptsas_sas_io_unit_pg0(mpt, portinfo);
 if (error) {
  free(portinfo, M_DEVBUF);
  return (0);
 }

 for (i = 0; i < portinfo->num_phys; i++) {
  phyinfo = &portinfo->phy_info[i];
  error = mptsas_sas_phy_pg0(mpt, phyinfo,
      (MPI_SAS_PHY_PGAD_FORM_PHY_NUMBER <<
      MPI_SAS_PHY_PGAD_FORM_SHIFT), i);
  if (error)
   break;
  error = mptsas_sas_device_pg0(mpt, &phyinfo->identify,
      (MPI_SAS_DEVICE_PGAD_FORM_HANDLE <<
      MPI_SAS_DEVICE_PGAD_FORM_SHIFT),
      phyinfo->handle);
  if (error)
   break;
  phyinfo->identify.phy_num = phyinfo->phy_num = i;
  if (phyinfo->attached.dev_handle)
   error = mptsas_sas_device_pg0(mpt,
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
