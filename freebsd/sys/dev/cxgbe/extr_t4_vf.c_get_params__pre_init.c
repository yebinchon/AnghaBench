
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_3__ {void* cclk; } ;
struct TYPE_4__ {void* tp_vers; void* fw_vers; TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; int tp_version; int fw_version; int dev; } ;


 int CCLK ;
 int FWREV ;
 void* FW_PARAM_DEV (int ) ;
 int G_FW_HDR_FW_VER_BUILD (void*) ;
 int G_FW_HDR_FW_VER_MAJOR (void*) ;
 int G_FW_HDR_FW_VER_MICRO (void*) ;
 int G_FW_HDR_FW_VER_MINOR (void*) ;
 int TPREV ;
 int device_printf (int ,char*,int) ;
 int nitems (void**) ;
 int snprintf (int ,int,char*,int,int,int,int) ;
 int t4vf_query_params (struct adapter*,int ,void**,void**) ;

__attribute__((used)) static int
get_params__pre_init(struct adapter *sc)
{
 int rc;
 uint32_t param[3], val[3];

 param[0] = FW_PARAM_DEV(FWREV);
 param[1] = FW_PARAM_DEV(TPREV);
 param[2] = FW_PARAM_DEV(CCLK);
 rc = -t4vf_query_params(sc, nitems(param), param, val);
 if (rc != 0) {
  device_printf(sc->dev,
      "failed to query parameters (pre_init): %d.\n", rc);
  return (rc);
 }

 sc->params.fw_vers = val[0];
 sc->params.tp_vers = val[1];
 sc->params.vpd.cclk = val[2];

 snprintf(sc->fw_version, sizeof(sc->fw_version), "%u.%u.%u.%u",
     G_FW_HDR_FW_VER_MAJOR(sc->params.fw_vers),
     G_FW_HDR_FW_VER_MINOR(sc->params.fw_vers),
     G_FW_HDR_FW_VER_MICRO(sc->params.fw_vers),
     G_FW_HDR_FW_VER_BUILD(sc->params.fw_vers));

 snprintf(sc->tp_version, sizeof(sc->tp_version), "%u.%u.%u.%u",
     G_FW_HDR_FW_VER_MAJOR(sc->params.tp_vers),
     G_FW_HDR_FW_VER_MINOR(sc->params.tp_vers),
     G_FW_HDR_FW_VER_MICRO(sc->params.tp_vers),
     G_FW_HDR_FW_VER_BUILD(sc->params.tp_vers));

 return (0);
}
