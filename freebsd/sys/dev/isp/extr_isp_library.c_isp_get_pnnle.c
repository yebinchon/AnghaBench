
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_4__ {int pnnle_reserved; int pnnle_handle; int * pnnle_name; } ;
typedef TYPE_1__ isp_pnnle_t ;


 int ISP_IOXGET_16 (int *,int *,int ) ;
 int ISP_IOXGET_8 (int *,int *,int ) ;

void
isp_get_pnnle(ispsoftc_t *isp, isp_pnnle_t *src, isp_pnnle_t *dst)
{
 int i;

 for (i = 0; i < 8; i++)
  ISP_IOXGET_8(isp, &src->pnnle_name[i], dst->pnnle_name[i]);
 ISP_IOXGET_16(isp, &src->pnnle_handle, dst->pnnle_handle);
 ISP_IOXGET_16(isp, &src->pnnle_reserved, dst->pnnle_reserved);
}
