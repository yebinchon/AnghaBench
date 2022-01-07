
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpstr2 ;
typedef int tmpstr ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct mpr_softc {int prp_page_alloc_fail; int prp_pages_free_lowwater; int prp_pages_free; int use_phynum; int spinup_wait_time; int chain_alloc_fail; int enable_ssu; int max_io_pages; int max_chains; int chain_free_lowwater; int chain_free; int io_cmds_highwater; int io_cmds_active; int fw_version; int max_evtframes; int max_replyframes; int max_prireqframes; int max_reqframes; int msi_msgs; int max_msix; int disable_msix; struct sysctl_oid* sysctl_tree; struct sysctl_ctx_list sysctl_ctx; int mpr_dev; } ;


 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLFLAG_SKIP ;
 int CTLTYPE_OPAQUE ;
 int CTLTYPE_STRING ;
 int DEFAULT_SPINUP_WAIT ;
 int MPR_DRIVER_VERSION ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int,int *,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct mpr_softc*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_STRING (struct sysctl_ctx_list*,int ,int ,char*,int,int ,int ,char*) ;
 int SYSCTL_ADD_UQUAD (struct sysctl_ctx_list*,int ,int ,char*,int,int *,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _hw_mpr ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int mpr_debug_sysctl ;
 int mpr_dump_reqs ;
 int snprintf (char*,int,char*,int) ;
 int strlen (int ) ;
 int sysctl_ctx_init (struct sysctl_ctx_list*) ;

__attribute__((used)) static void
mpr_setup_sysctl(struct mpr_softc *sc)
{
 struct sysctl_ctx_list *sysctl_ctx = ((void*)0);
 struct sysctl_oid *sysctl_tree = ((void*)0);
 char tmpstr[80], tmpstr2[80];





 snprintf(tmpstr, sizeof(tmpstr), "MPR controller %d",
     device_get_unit(sc->mpr_dev));
 snprintf(tmpstr2, sizeof(tmpstr2), "%d", device_get_unit(sc->mpr_dev));

 sysctl_ctx = device_get_sysctl_ctx(sc->mpr_dev);
 if (sysctl_ctx != ((void*)0))
  sysctl_tree = device_get_sysctl_tree(sc->mpr_dev);

 if (sysctl_tree == ((void*)0)) {
  sysctl_ctx_init(&sc->sysctl_ctx);
  sc->sysctl_tree = SYSCTL_ADD_NODE(&sc->sysctl_ctx,
      SYSCTL_STATIC_CHILDREN(_hw_mpr), OID_AUTO, tmpstr2,
      CTLFLAG_RD, 0, tmpstr);
  if (sc->sysctl_tree == ((void*)0))
   return;
  sysctl_ctx = &sc->sysctl_ctx;
  sysctl_tree = sc->sysctl_tree;
 }

 SYSCTL_ADD_PROC(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "debug_level", CTLTYPE_STRING | CTLFLAG_RW | CTLFLAG_MPSAFE,
     sc, 0, mpr_debug_sysctl, "A", "mpr debug level");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "disable_msix", CTLFLAG_RD, &sc->disable_msix, 0,
     "Disable the use of MSI-X interrupts");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "max_msix", CTLFLAG_RD, &sc->max_msix, 0,
     "User-defined maximum number of MSIX queues");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "msix_msgs", CTLFLAG_RD, &sc->msi_msgs, 0,
     "Negotiated number of MSIX queues");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "max_reqframes", CTLFLAG_RD, &sc->max_reqframes, 0,
     "Total number of allocated request frames");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "max_prireqframes", CTLFLAG_RD, &sc->max_prireqframes, 0,
     "Total number of allocated high priority request frames");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "max_replyframes", CTLFLAG_RD, &sc->max_replyframes, 0,
     "Total number of allocated reply frames");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "max_evtframes", CTLFLAG_RD, &sc->max_evtframes, 0,
     "Total number of event frames allocated");

 SYSCTL_ADD_STRING(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "firmware_version", CTLFLAG_RW, sc->fw_version,
     strlen(sc->fw_version), "firmware version");

 SYSCTL_ADD_STRING(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "driver_version", CTLFLAG_RW, MPR_DRIVER_VERSION,
     strlen(MPR_DRIVER_VERSION), "driver version");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "io_cmds_active", CTLFLAG_RD,
     &sc->io_cmds_active, 0, "number of currently active commands");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "io_cmds_highwater", CTLFLAG_RD,
     &sc->io_cmds_highwater, 0, "maximum active commands seen");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "chain_free", CTLFLAG_RD,
     &sc->chain_free, 0, "number of free chain elements");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "chain_free_lowwater", CTLFLAG_RD,
     &sc->chain_free_lowwater, 0,"lowest number of free chain elements");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "max_chains", CTLFLAG_RD,
     &sc->max_chains, 0,"maximum chain frames that will be allocated");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "max_io_pages", CTLFLAG_RD,
     &sc->max_io_pages, 0,"maximum pages to allow per I/O (if <1 use "
     "IOCFacts)");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "enable_ssu", CTLFLAG_RW, &sc->enable_ssu, 0,
     "enable SSU to SATA SSD/HDD at shutdown");

 SYSCTL_ADD_UQUAD(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "chain_alloc_fail", CTLFLAG_RD,
     &sc->chain_alloc_fail, "chain allocation failures");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "spinup_wait_time", CTLFLAG_RD,
     &sc->spinup_wait_time, DEFAULT_SPINUP_WAIT, "seconds to wait for "
     "spinup after SATA ID error");

 SYSCTL_ADD_PROC(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "dump_reqs", CTLTYPE_OPAQUE | CTLFLAG_RD | CTLFLAG_SKIP, sc, 0,
     mpr_dump_reqs, "I", "Dump Active Requests");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "use_phy_num", CTLFLAG_RD, &sc->use_phynum, 0,
     "Use the phy number for enumeration");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "prp_pages_free", CTLFLAG_RD,
     &sc->prp_pages_free, 0, "number of free PRP pages");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "prp_pages_free_lowwater", CTLFLAG_RD,
     &sc->prp_pages_free_lowwater, 0,"lowest number of free PRP pages");

 SYSCTL_ADD_UQUAD(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "prp_page_alloc_fail", CTLFLAG_RD,
     &sc->prp_page_alloc_fail, "PRP page allocation failures");
}
