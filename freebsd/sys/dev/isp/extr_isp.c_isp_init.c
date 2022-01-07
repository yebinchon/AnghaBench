
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ispsoftc_t ;


 scalar_t__ IS_24XX (int *) ;
 scalar_t__ IS_FC (int *) ;
 int isp_fibre_init (int *) ;
 int isp_fibre_init_2400 (int *) ;
 int isp_scsi_init (int *) ;

void
isp_init(ispsoftc_t *isp)
{
 if (IS_FC(isp)) {
  if (IS_24XX(isp)) {
   isp_fibre_init_2400(isp);
  } else {
   isp_fibre_init(isp);
  }
 } else {
  isp_scsi_init(isp);
 }
}
