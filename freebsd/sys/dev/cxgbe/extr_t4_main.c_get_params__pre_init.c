
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_3__ {void* cclk; } ;
struct TYPE_4__ {TYPE_1__ vpd; int nports; void* portvec; int er_vers; int tp_vers; int bs_vers; int fw_vers; } ;
struct adapter {int dev; TYPE_2__ params; int pf; int mbox; int er_version; int tp_version; int bs_version; int fw_version; } ;


 int CCLK ;
 void* FW_PARAM_DEV (int ) ;
 int G_FW_HDR_FW_VER_BUILD (int ) ;
 int G_FW_HDR_FW_VER_MAJOR (int ) ;
 int G_FW_HDR_FW_VER_MICRO (int ) ;
 int G_FW_HDR_FW_VER_MINOR (int ) ;
 int PORTVEC ;
 int bitcount32 (void*) ;
 int device_printf (int ,char*,int) ;
 int fixup_devlog_params (struct adapter*) ;
 int snprintf (int ,int,char*,int,int,int,int) ;
 int t4_get_version_info (struct adapter*) ;
 int t4_init_devlog_params (struct adapter*,int) ;
 int t4_query_params (struct adapter*,int ,int ,int ,int,void**,void**) ;

__attribute__((used)) static int
get_params__pre_init(struct adapter *sc)
{
 int rc;
 uint32_t param[2], val[2];

 t4_get_version_info(sc);

 snprintf(sc->fw_version, sizeof(sc->fw_version), "%u.%u.%u.%u",
     G_FW_HDR_FW_VER_MAJOR(sc->params.fw_vers),
     G_FW_HDR_FW_VER_MINOR(sc->params.fw_vers),
     G_FW_HDR_FW_VER_MICRO(sc->params.fw_vers),
     G_FW_HDR_FW_VER_BUILD(sc->params.fw_vers));

 snprintf(sc->bs_version, sizeof(sc->bs_version), "%u.%u.%u.%u",
     G_FW_HDR_FW_VER_MAJOR(sc->params.bs_vers),
     G_FW_HDR_FW_VER_MINOR(sc->params.bs_vers),
     G_FW_HDR_FW_VER_MICRO(sc->params.bs_vers),
     G_FW_HDR_FW_VER_BUILD(sc->params.bs_vers));

 snprintf(sc->tp_version, sizeof(sc->tp_version), "%u.%u.%u.%u",
     G_FW_HDR_FW_VER_MAJOR(sc->params.tp_vers),
     G_FW_HDR_FW_VER_MINOR(sc->params.tp_vers),
     G_FW_HDR_FW_VER_MICRO(sc->params.tp_vers),
     G_FW_HDR_FW_VER_BUILD(sc->params.tp_vers));

 snprintf(sc->er_version, sizeof(sc->er_version), "%u.%u.%u.%u",
     G_FW_HDR_FW_VER_MAJOR(sc->params.er_vers),
     G_FW_HDR_FW_VER_MINOR(sc->params.er_vers),
     G_FW_HDR_FW_VER_MICRO(sc->params.er_vers),
     G_FW_HDR_FW_VER_BUILD(sc->params.er_vers));

 param[0] = FW_PARAM_DEV(PORTVEC);
 param[1] = FW_PARAM_DEV(CCLK);
 rc = -t4_query_params(sc, sc->mbox, sc->pf, 0, 2, param, val);
 if (rc != 0) {
  device_printf(sc->dev,
      "failed to query parameters (pre_init): %d.\n", rc);
  return (rc);
 }

 sc->params.portvec = val[0];
 sc->params.nports = bitcount32(val[0]);
 sc->params.vpd.cclk = val[1];


 rc = -t4_init_devlog_params(sc, 1);
 if (rc == 0)
  fixup_devlog_params(sc);
 else {
  device_printf(sc->dev,
      "failed to get devlog parameters: %d.\n", rc);
  rc = 0;
 }

 return (rc);
}
