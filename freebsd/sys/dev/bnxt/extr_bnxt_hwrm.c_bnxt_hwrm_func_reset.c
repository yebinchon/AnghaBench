
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrm_func_reset_input {scalar_t__ enables; int member_0; } ;
struct bnxt_softc {int dummy; } ;
typedef int req ;


 int HWRM_FUNC_RESET ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_func_reset_input*,int ) ;
 int hwrm_send_message (struct bnxt_softc*,struct hwrm_func_reset_input*,int) ;

int
bnxt_hwrm_func_reset(struct bnxt_softc *softc)
{
 struct hwrm_func_reset_input req = {0};

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_FUNC_RESET);
 req.enables = 0;

 return hwrm_send_message(softc, &req, sizeof(req));
}
