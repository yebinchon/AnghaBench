
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_11__ {void* dev_handle; } ;
struct TYPE_10__ {void* dev_handle; } ;
struct mptsas_phyinfo {TYPE_2__ attached; TYPE_1__ identify; int programmed_link_rate; int hw_link_rate; } ;
struct mpt_softc {int dummy; } ;
struct TYPE_13__ {scalar_t__ ExtPageLength; } ;
struct TYPE_12__ {int AttachedDevHandle; int OwnerDevHandle; int ProgrammedLinkRate; int HwLinkRate; } ;
typedef TYPE_3__ SasPhyPage0_t ;
typedef TYPE_4__ ConfigExtendedPageHeader_t ;


 int ENOMEM ;
 int ENXIO ;
 int MPI_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI_CONFIG_EXTPAGETYPE_SAS_PHY ;
 int MPI_SASPHY0_PAGEVERSION ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int free (TYPE_3__*,int ) ;
 void* le16toh (int ) ;
 TYPE_3__* malloc (int,int ,int) ;
 int mpt_read_extcfg_header (struct mpt_softc*,int ,int ,int ,int ,TYPE_4__*,int ,int) ;
 int mpt_read_extcfg_page (struct mpt_softc*,int ,scalar_t__,TYPE_4__*,TYPE_3__*,int,int ,int) ;

__attribute__((used)) static int
mptsas_sas_phy_pg0(struct mpt_softc *mpt, struct mptsas_phyinfo *phy_info,
 uint32_t form, uint32_t form_specific)
{
 ConfigExtendedPageHeader_t hdr;
 SasPhyPage0_t *buffer;
 int error;

 error = mpt_read_extcfg_header(mpt, MPI_SASPHY0_PAGEVERSION, 0, 0,
           MPI_CONFIG_EXTPAGETYPE_SAS_PHY, &hdr,
           0, 10000);
 if (error)
  goto out;
 if (hdr.ExtPageLength == 0) {
  error = ENXIO;
  goto out;
 }

 buffer = malloc(sizeof(SasPhyPage0_t), M_DEVBUF, M_NOWAIT|M_ZERO);
 if (buffer == ((void*)0)) {
  error = ENOMEM;
  goto out;
 }

 error = mpt_read_extcfg_page(mpt, MPI_CONFIG_ACTION_PAGE_READ_CURRENT,
         form + form_specific, &hdr, buffer,
         sizeof(SasPhyPage0_t), 0, 10000);
 if (error) {
  free(buffer, M_DEVBUF);
  goto out;
 }

 phy_info->hw_link_rate = buffer->HwLinkRate;
 phy_info->programmed_link_rate = buffer->ProgrammedLinkRate;
 phy_info->identify.dev_handle = le16toh(buffer->OwnerDevHandle);
 phy_info->attached.dev_handle = le16toh(buffer->AttachedDevHandle);

 free(buffer, M_DEVBUF);
out:
 return (error);
}
