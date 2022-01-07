
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int __qlnx_iov_update_vport (void*,int ,void*,int *) ;

int
qlnx_iov_update_vport(void *hwfn, uint8_t vfid, void *params, uint16_t *tlvs)
{
 return(__qlnx_iov_update_vport(hwfn, vfid, params, tlvs));
}
