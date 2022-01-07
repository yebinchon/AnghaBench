
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mptsas_portinfo {int num_phys; struct mptsas_phyinfo* phy_info; } ;
struct mptsas_phyinfo {int phy_num; int handle; int negotiated_link_rate; int port_id; } ;
struct mpt_softc {int dummy; } ;
struct TYPE_10__ {int ExtPageLength; } ;
struct TYPE_9__ {int NumPhys; TYPE_1__* PhyData; } ;
struct TYPE_8__ {int ControllerDevHandle; int NegotiatedLinkRate; int Port; } ;
typedef TYPE_2__ SasIOUnitPage0_t ;
typedef TYPE_3__ ConfigExtendedPageHeader_t ;


 int ENOMEM ;
 int ENXIO ;
 int MPI_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI_CONFIG_EXTPAGETYPE_SAS_IO_UNIT ;
 int MPI_SASIOUNITPAGE0_PAGEVERSION ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int free (TYPE_2__*,int ) ;
 int le16toh (int ) ;
 void* malloc (int,int ,int) ;
 int mpt_read_extcfg_header (struct mpt_softc*,int ,int ,int ,int ,TYPE_3__*,int ,int) ;
 int mpt_read_extcfg_page (struct mpt_softc*,int ,int ,TYPE_3__*,TYPE_2__*,int,int ,int) ;

__attribute__((used)) static int
mptsas_sas_io_unit_pg0(struct mpt_softc *mpt, struct mptsas_portinfo *portinfo)
{
 ConfigExtendedPageHeader_t hdr;
 struct mptsas_phyinfo *phyinfo;
 SasIOUnitPage0_t *buffer;
 int error, len, i;

 error = mpt_read_extcfg_header(mpt, MPI_SASIOUNITPAGE0_PAGEVERSION,
           0, 0, MPI_CONFIG_EXTPAGETYPE_SAS_IO_UNIT,
           &hdr, 0, 10000);
 if (error)
  goto out;
 if (hdr.ExtPageLength == 0) {
  error = ENXIO;
  goto out;
 }

 len = hdr.ExtPageLength * 4;
 buffer = malloc(len, M_DEVBUF, M_NOWAIT|M_ZERO);
 if (buffer == ((void*)0)) {
  error = ENOMEM;
  goto out;
 }

 error = mpt_read_extcfg_page(mpt, MPI_CONFIG_ACTION_PAGE_READ_CURRENT,
         0, &hdr, buffer, len, 0, 10000);
 if (error) {
  free(buffer, M_DEVBUF);
  goto out;
 }

 portinfo->num_phys = buffer->NumPhys;
 portinfo->phy_info = malloc(sizeof(*portinfo->phy_info) *
     portinfo->num_phys, M_DEVBUF, M_NOWAIT|M_ZERO);
 if (portinfo->phy_info == ((void*)0)) {
  free(buffer, M_DEVBUF);
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
      le16toh(buffer->PhyData[i].ControllerDevHandle);
 }

 free(buffer, M_DEVBUF);
out:
 return (error);
}
