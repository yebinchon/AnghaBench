
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int uint64_t ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_10__ {int wwnn; int wwpn; int portid; } ;
struct TYPE_11__ {TYPE_3__ fc; } ;
struct TYPE_9__ {int Low; scalar_t__ High; } ;
struct TYPE_8__ {int Low; scalar_t__ High; } ;
struct TYPE_12__ {char* PageVersion; int PageType; int PageNumber; int PageLength; } ;
struct TYPE_13__ {int CurrentSpeed; int Flags; int PortIdentifier; TYPE_2__ WWPN; TYPE_1__ WWNN; TYPE_5__ Header; } ;
struct mpt_softc {int mpt_fcport_speed; TYPE_4__ scinfo; int dev; TYPE_7__ mpt_fcport_page0; } ;


 int CTLFLAG_RD ;
 int FALSE ;
 int MPI_CONFIG_PAGETYPE_FC_PORT ;
 int MPI_FCPORTPAGE0_FLAGS_ATTACH_TYPE_MASK ;
 int MPT_LOCK (struct mpt_softc*) ;
 int MPT_PRT_DEBUG ;
 int MPT_PRT_INFO ;
 int MPT_UNLOCK (struct mpt_softc*) ;
 int OID_AUTO ;
 int SYSCTL_ADD_QUAD (struct sysctl_ctx_list*,int ,int ,char*,int ,int*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int mpt2host_config_page_fc_port_0 (TYPE_7__*) ;
 int mpt_lprt (struct mpt_softc*,int ,char*,char*,int ,int ,int) ;
 int mpt_prt (struct mpt_softc*,char*) ;
 int mpt_read_cfg_header (struct mpt_softc*,int ,int ,int ,TYPE_5__*,int ,int) ;
 int mpt_read_cur_cfg_page (struct mpt_softc*,int ,TYPE_5__*,int,int ,int) ;

__attribute__((used)) static int
mpt_read_config_info_fc(struct mpt_softc *mpt)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;
 char *topology = ((void*)0);
 int rv;

 rv = mpt_read_cfg_header(mpt, MPI_CONFIG_PAGETYPE_FC_PORT, 0,
     0, &mpt->mpt_fcport_page0.Header, FALSE, 5000);
 if (rv) {
  return (-1);
 }
 mpt_lprt(mpt, MPT_PRT_DEBUG, "FC Port Page 0 Header: %x %x %x %x\n",
   mpt->mpt_fcport_page0.Header.PageVersion,
   mpt->mpt_fcport_page0.Header.PageLength,
   mpt->mpt_fcport_page0.Header.PageNumber,
   mpt->mpt_fcport_page0.Header.PageType);


 rv = mpt_read_cur_cfg_page(mpt, 0, &mpt->mpt_fcport_page0.Header,
     sizeof(mpt->mpt_fcport_page0), FALSE, 5000);
 if (rv) {
  mpt_prt(mpt, "failed to read FC Port Page 0\n");
  return (-1);
 }
 mpt2host_config_page_fc_port_0(&mpt->mpt_fcport_page0);

 switch (mpt->mpt_fcport_page0.CurrentSpeed) {
 case 135:
  mpt->mpt_fcport_speed = 1;
  break;
 case 134:
  mpt->mpt_fcport_speed = 2;
  break;
 case 136:
  mpt->mpt_fcport_speed = 10;
  break;
 case 133:
  mpt->mpt_fcport_speed = 4;
  break;
 default:
  mpt->mpt_fcport_speed = 0;
  break;
 }

 switch (mpt->mpt_fcport_page0.Flags &
     MPI_FCPORTPAGE0_FLAGS_ATTACH_TYPE_MASK) {
 case 131:
  mpt->mpt_fcport_speed = 0;
  topology = "<NO LOOP>";
  break;
 case 130:
  topology = "N-Port";
  break;
 case 129:
  topology = "NL-Port";
  break;
 case 132:
  topology = "F-Port";
  break;
 case 128:
  topology = "FL-Port";
  break;
 default:
  mpt->mpt_fcport_speed = 0;
  topology = "?";
  break;
 }

 mpt->scinfo.fc.wwnn = ((uint64_t)mpt->mpt_fcport_page0.WWNN.High << 32)
     | mpt->mpt_fcport_page0.WWNN.Low;
 mpt->scinfo.fc.wwpn = ((uint64_t)mpt->mpt_fcport_page0.WWPN.High << 32)
     | mpt->mpt_fcport_page0.WWPN.Low;
 mpt->scinfo.fc.portid = mpt->mpt_fcport_page0.PortIdentifier;

 mpt_lprt(mpt, MPT_PRT_INFO,
     "FC Port Page 0: Topology <%s> WWNN 0x%16jx WWPN 0x%16jx "
     "Speed %u-Gbit\n", topology,
     (uintmax_t)mpt->scinfo.fc.wwnn, (uintmax_t)mpt->scinfo.fc.wwpn,
     mpt->mpt_fcport_speed);
 MPT_UNLOCK(mpt);
 ctx = device_get_sysctl_ctx(mpt->dev);
 tree = device_get_sysctl_tree(mpt->dev);

 SYSCTL_ADD_QUAD(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "wwnn", CTLFLAG_RD, &mpt->scinfo.fc.wwnn,
     "World Wide Node Name");

 SYSCTL_ADD_QUAD(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
      "wwpn", CTLFLAG_RD, &mpt->scinfo.fc.wwpn,
      "World Wide Port Name");

 MPT_LOCK(mpt);
 return (0);
}
