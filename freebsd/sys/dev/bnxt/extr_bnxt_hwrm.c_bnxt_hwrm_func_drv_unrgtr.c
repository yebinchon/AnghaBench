
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrm_func_drv_unrgtr_input {int flags; int member_0; } ;
struct bnxt_softc {int dummy; } ;
typedef int req ;


 int HWRM_FUNC_DRV_UNRGTR ;
 int HWRM_FUNC_DRV_UNRGTR_INPUT_FLAGS_PREPARE_FOR_SHUTDOWN ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_func_drv_unrgtr_input*,int ) ;
 int hwrm_send_message (struct bnxt_softc*,struct hwrm_func_drv_unrgtr_input*,int) ;

int
bnxt_hwrm_func_drv_unrgtr(struct bnxt_softc *softc, bool shutdown)
{
 struct hwrm_func_drv_unrgtr_input req = {0};

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_FUNC_DRV_UNRGTR);
 if (shutdown == 1)
  req.flags |=
      HWRM_FUNC_DRV_UNRGTR_INPUT_FLAGS_PREPARE_FOR_SHUTDOWN;
 return hwrm_send_message(softc, &req, sizeof(req));
}
