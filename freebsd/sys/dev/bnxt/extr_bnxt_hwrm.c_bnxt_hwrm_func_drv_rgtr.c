
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrm_func_drv_rgtr_input {int ver_maj; int ver_min; int ver_upd; int os_type; int enables; int member_0; } ;
struct bnxt_softc {int dummy; } ;
typedef int req ;


 int HWRM_FUNC_DRV_RGTR ;
 int HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_OS_TYPE ;
 int HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_VER ;
 int HWRM_FUNC_DRV_RGTR_INPUT_OS_TYPE_FREEBSD ;
 int __FreeBSD_version ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_func_drv_rgtr_input*,int ) ;
 int htole16 (int ) ;
 int htole32 (int) ;
 int hwrm_send_message (struct bnxt_softc*,struct hwrm_func_drv_rgtr_input*,int) ;

int
bnxt_hwrm_func_drv_rgtr(struct bnxt_softc *softc)
{
 struct hwrm_func_drv_rgtr_input req = {0};

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_FUNC_DRV_RGTR);

 req.enables = htole32(HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_VER |
     HWRM_FUNC_DRV_RGTR_INPUT_ENABLES_OS_TYPE);
 req.os_type = htole16(HWRM_FUNC_DRV_RGTR_INPUT_OS_TYPE_FREEBSD);

 req.ver_maj = __FreeBSD_version / 100000;
 req.ver_min = (__FreeBSD_version / 1000) % 100;
 req.ver_upd = (__FreeBSD_version / 100) % 10;

 return hwrm_send_message(softc, &req, sizeof(req));
}
