
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_4__ {int pnhle_reserved; int pnhle_handle; int pnhle_port_id_hi; int pnhle_port_id_lo; } ;
typedef TYPE_1__ isp_pnhle_24xx_t ;


 int ISP_IOXGET_16 (int *,int *,int ) ;

void
isp_get_pnhle_24xx(ispsoftc_t *isp, isp_pnhle_24xx_t *src, isp_pnhle_24xx_t *dst)
{

 ISP_IOXGET_16(isp, &src->pnhle_port_id_lo, dst->pnhle_port_id_lo);
 ISP_IOXGET_16(isp, &src->pnhle_port_id_hi, dst->pnhle_port_id_hi);
 ISP_IOXGET_16(isp, &src->pnhle_handle, dst->pnhle_handle);
 ISP_IOXGET_16(isp, &src->pnhle_reserved, dst->pnhle_reserved);
}
