
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ispsoftc_t ;
struct TYPE_4__ {int * pdb_reserved1; int * pdb_portname; int * pdb_nodename; int pdb_prli_svc3; int pdb_prli_svc0; int pdb_reserved0; int pdb_rcv_dsize; int pdb_handle; int pdb_retry_timer; int * pdb_portid_bits; int * pdb_hardaddr_bits; int pdb_laststate; int pdb_curstate; int pdb_flags; } ;
typedef TYPE_1__ isp_pdb_24xx_t ;


 int ISP_IOXGET_16 (int *,int *,int ) ;
 int ISP_IOXGET_8 (int *,int *,int ) ;

void
isp_get_pdb_24xx(ispsoftc_t *isp, isp_pdb_24xx_t *src, isp_pdb_24xx_t *dst)
{
 int i;
 ISP_IOXGET_16(isp, &src->pdb_flags, dst->pdb_flags);
        ISP_IOXGET_8(isp, &src->pdb_curstate, dst->pdb_curstate);
        ISP_IOXGET_8(isp, &src->pdb_laststate, dst->pdb_laststate);
 for (i = 0; i < 4; i++) {
  ISP_IOXGET_8(isp, &src->pdb_hardaddr_bits[i], dst->pdb_hardaddr_bits[i]);
 }
 for (i = 0; i < 4; i++) {
  ISP_IOXGET_8(isp, &src->pdb_portid_bits[i], dst->pdb_portid_bits[i]);
 }
 ISP_IOXGET_16(isp, &src->pdb_retry_timer, dst->pdb_retry_timer);
 ISP_IOXGET_16(isp, &src->pdb_handle, dst->pdb_handle);
 ISP_IOXGET_16(isp, &src->pdb_rcv_dsize, dst->pdb_rcv_dsize);
 ISP_IOXGET_16(isp, &src->pdb_reserved0, dst->pdb_reserved0);
 ISP_IOXGET_16(isp, &src->pdb_prli_svc0, dst->pdb_prli_svc0);
 ISP_IOXGET_16(isp, &src->pdb_prli_svc3, dst->pdb_prli_svc3);
 for (i = 0; i < 8; i++) {
  ISP_IOXGET_8(isp, &src->pdb_nodename[i], dst->pdb_nodename[i]);
 }
 for (i = 0; i < 8; i++) {
  ISP_IOXGET_8(isp, &src->pdb_portname[i], dst->pdb_portname[i]);
 }
 for (i = 0; i < 24; i++) {
  ISP_IOXGET_8(isp, &src->pdb_reserved1[i], dst->pdb_reserved1[i]);
 }
}
