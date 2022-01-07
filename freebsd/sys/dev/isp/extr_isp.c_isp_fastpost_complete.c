
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ispsoftc_t ;
typedef int XS_T ;


 int ISP_DMAFREE (int *,int *,int ) ;
 int ISP_LOGWARN ;
 int SCSI_GOOD ;
 int XS_SET_RESID (int *,int ) ;
 int * XS_STSP (int *) ;
 scalar_t__ XS_XFRLEN (int *) ;
 int isp_destroy_handle (int *,int ) ;
 int isp_done (int *) ;
 int * isp_find_xs (int *,int ) ;
 int isp_prt (int *,int ,char*,int ) ;

__attribute__((used)) static void
isp_fastpost_complete(ispsoftc_t *isp, uint32_t fph)
{
 XS_T *xs;

 if (fph == 0) {
  return;
 }
 xs = isp_find_xs(isp, fph);
 if (xs == ((void*)0)) {
  isp_prt(isp, ISP_LOGWARN,
      "Command for fast post handle 0x%x not found", fph);
  return;
 }
 isp_destroy_handle(isp, fph);






 XS_SET_RESID(xs, 0);
 *XS_STSP(xs) = SCSI_GOOD;
 if (XS_XFRLEN(xs)) {
  ISP_DMAFREE(isp, xs, fph);
 }
 isp_done(xs);
}
