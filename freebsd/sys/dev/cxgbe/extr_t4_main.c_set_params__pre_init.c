
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int fw_vers; int viid_smt_extn_support; } ;
struct adapter {TYPE_1__ params; int pf; int mbox; int dev; } ;


 scalar_t__ CHELSIO_T6 ;
 int FW_EINVAL ;
 int FW_PARAM_DEV (int ) ;
 int HPFILTER_REGION_SUPPORT ;
 int OPAQUE_VIID_SMT_EXTN ;
 int V_FW_HDR_FW_VER_BUILD (int ) ;
 int V_FW_HDR_FW_VER_MAJOR (int) ;
 int V_FW_HDR_FW_VER_MICRO (int) ;
 int V_FW_HDR_FW_VER_MINOR (int) ;
 scalar_t__ chip_id (struct adapter*) ;
 int device_printf (int ,char*,int) ;
 int t4_set_params (struct adapter*,int ,int ,int ,int,int*,int*) ;

__attribute__((used)) static int
set_params__pre_init(struct adapter *sc)
{
 int rc = 0;
 uint32_t param, val;

 if (chip_id(sc) >= CHELSIO_T6) {
  param = FW_PARAM_DEV(HPFILTER_REGION_SUPPORT);
  val = 1;
  rc = -t4_set_params(sc, sc->mbox, sc->pf, 0, 1, &param, &val);

  if (rc == FW_EINVAL && sc->params.fw_vers <
      (V_FW_HDR_FW_VER_MAJOR(1) | V_FW_HDR_FW_VER_MINOR(20) |
      V_FW_HDR_FW_VER_MICRO(1) | V_FW_HDR_FW_VER_BUILD(0))) {
   rc = 0;
  }
  if (rc != 0) {
   device_printf(sc->dev,
       "failed to enable high priority filters :%d.\n",
       rc);
  }
 }


 param = FW_PARAM_DEV(OPAQUE_VIID_SMT_EXTN);
 val = 1;
 rc = -t4_set_params(sc, sc->mbox, sc->pf, 0, 1, &param, &val);
 if (rc == 0 && val == 1)
  sc->params.viid_smt_extn_support = 1;
 else
  sc->params.viid_smt_extn_support = 0;

 return (rc);
}
