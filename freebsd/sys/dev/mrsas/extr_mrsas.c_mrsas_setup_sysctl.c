
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmpstr2 ;
typedef int tmpstr ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_6__ {int val_rdonly; } ;
struct TYPE_5__ {int val_rdonly; } ;
struct TYPE_4__ {int val_rdonly; } ;
struct mrsas_softc {TYPE_3__ sge_holes; TYPE_2__ prp_count; int drv_stream_detection; int block_sync_cache; int reset_in_progress; int mrsas_fw_fault_check_delay; int mrsas_io_timeout; int mrsas_debug; int io_cmds_highwater; TYPE_1__ fw_outstanding; int reset_count; int disableOnlineCtrlReset; struct sysctl_oid* sysctl_tree; struct sysctl_ctx_list sysctl_ctx; int mrsas_dev; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int MRSAS_VERSION ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int ,int ,char*) ;
 int SYSCTL_ADD_STRING (struct sysctl_ctx_list*,int ,int ,char*,int ,int ,int ,char*) ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _hw_mrsas ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (int ) ;
 int sysctl_ctx_init (struct sysctl_ctx_list*) ;

__attribute__((used)) static void
mrsas_setup_sysctl(struct mrsas_softc *sc)
{
 struct sysctl_ctx_list *sysctl_ctx = ((void*)0);
 struct sysctl_oid *sysctl_tree = ((void*)0);
 char tmpstr[80], tmpstr2[80];





 snprintf(tmpstr, sizeof(tmpstr), "MRSAS controller %d",
     device_get_unit(sc->mrsas_dev));
 snprintf(tmpstr2, sizeof(tmpstr2), "%d", device_get_unit(sc->mrsas_dev));

 sysctl_ctx = device_get_sysctl_ctx(sc->mrsas_dev);
 if (sysctl_ctx != ((void*)0))
  sysctl_tree = device_get_sysctl_tree(sc->mrsas_dev);

 if (sysctl_tree == ((void*)0)) {
  sysctl_ctx_init(&sc->sysctl_ctx);
  sc->sysctl_tree = SYSCTL_ADD_NODE(&sc->sysctl_ctx,
      SYSCTL_STATIC_CHILDREN(_hw_mrsas), OID_AUTO, tmpstr2,
      CTLFLAG_RD, 0, tmpstr);
  if (sc->sysctl_tree == ((void*)0))
   return;
  sysctl_ctx = &sc->sysctl_ctx;
  sysctl_tree = sc->sysctl_tree;
 }
 SYSCTL_ADD_UINT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "disable_ocr", CTLFLAG_RW, &sc->disableOnlineCtrlReset, 0,
     "Disable the use of OCR");

 SYSCTL_ADD_STRING(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "driver_version", CTLFLAG_RD, MRSAS_VERSION,
     strlen(MRSAS_VERSION), "driver version");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "reset_count", CTLFLAG_RD,
     &sc->reset_count, 0, "number of ocr from start of the day");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "fw_outstanding", CTLFLAG_RD,
     &sc->fw_outstanding.val_rdonly, 0, "FW outstanding commands");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "io_cmds_highwater", CTLFLAG_RD,
     &sc->io_cmds_highwater, 0, "Max FW outstanding commands");

 SYSCTL_ADD_UINT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "mrsas_debug", CTLFLAG_RW, &sc->mrsas_debug, 0,
     "Driver debug level");

 SYSCTL_ADD_UINT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "mrsas_io_timeout", CTLFLAG_RW, &sc->mrsas_io_timeout,
     0, "Driver IO timeout value in mili-second.");

 SYSCTL_ADD_UINT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "mrsas_fw_fault_check_delay", CTLFLAG_RW,
     &sc->mrsas_fw_fault_check_delay,
     0, "FW fault check thread delay in seconds. <default is 1 sec>");

 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "reset_in_progress", CTLFLAG_RD,
     &sc->reset_in_progress, 0, "ocr in progress status");

 SYSCTL_ADD_UINT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "block_sync_cache", CTLFLAG_RW,
     &sc->block_sync_cache, 0,
     "Block SYNC CACHE at driver. <default: 0, send it to FW>");
 SYSCTL_ADD_UINT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "stream detection", CTLFLAG_RW,
  &sc->drv_stream_detection, 0,
  "Disable/Enable Stream detection. <default: 1, Enable Stream Detection>");
 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "prp_count", CTLFLAG_RD,
     &sc->prp_count.val_rdonly, 0, "Number of IOs for which PRPs are built");
 SYSCTL_ADD_INT(sysctl_ctx, SYSCTL_CHILDREN(sysctl_tree),
     OID_AUTO, "SGE holes", CTLFLAG_RD,
     &sc->sge_holes.val_rdonly, 0, "Number of IOs with holes in SGEs");
}
