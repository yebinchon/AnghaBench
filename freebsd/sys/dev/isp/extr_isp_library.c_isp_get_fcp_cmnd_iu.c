
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_6__ {int fcp_cmnd_dl; int * fcp_cmnd_cdb; } ;
struct TYPE_7__ {TYPE_1__ sf; } ;
struct TYPE_8__ {TYPE_2__ cdb_dl; int fcp_cmnd_alen_datadir; int fcp_cmnd_task_management; int fcp_cmnd_task_attribute; int fcp_cmnd_crn; int * fcp_cmnd_lun; } ;
typedef TYPE_3__ fcp_cmnd_iu_t ;


 int ISP_IOZGET_32 (int *,int *,int ) ;
 int ISP_IOZGET_8 (int *,int *,int ) ;

void
isp_get_fcp_cmnd_iu(ispsoftc_t *isp, fcp_cmnd_iu_t *src, fcp_cmnd_iu_t *dst)
{
 int i;

 for (i = 0; i < 8; i++) {
  ISP_IOZGET_8(isp, &src->fcp_cmnd_lun[i], dst->fcp_cmnd_lun[i]);
 }
        ISP_IOZGET_8(isp, &src->fcp_cmnd_crn, dst->fcp_cmnd_crn);
        ISP_IOZGET_8(isp, &src->fcp_cmnd_task_attribute, dst->fcp_cmnd_task_attribute);
        ISP_IOZGET_8(isp, &src->fcp_cmnd_task_management, dst->fcp_cmnd_task_management);
        ISP_IOZGET_8(isp, &src->fcp_cmnd_alen_datadir, dst->fcp_cmnd_alen_datadir);
 for (i = 0; i < 16; i++) {
  ISP_IOZGET_8(isp, &src->cdb_dl.sf.fcp_cmnd_cdb[i], dst->cdb_dl.sf.fcp_cmnd_cdb[i]);
 }
 ISP_IOZGET_32(isp, &src->cdb_dl.sf.fcp_cmnd_dl, dst->cdb_dl.sf.fcp_cmnd_dl);
}
