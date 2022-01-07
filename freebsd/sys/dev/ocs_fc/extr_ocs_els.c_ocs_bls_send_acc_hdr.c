
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int ocs_io_t ;
struct TYPE_3__ {int d_id; int rx_id; int ox_id; } ;
typedef TYPE_1__ fc_header_t ;


 int fc_be24toh (int ) ;
 int ocs_be16toh (int ) ;
 int * ocs_bls_send_acc (int *,int ,int ,int ) ;

ocs_io_t *
ocs_bls_send_acc_hdr(ocs_io_t *io, fc_header_t *hdr)
{
 uint16_t ox_id = ocs_be16toh(hdr->ox_id);
 uint16_t rx_id = ocs_be16toh(hdr->rx_id);
 uint32_t d_id = fc_be24toh(hdr->d_id);

 return ocs_bls_send_acc(io, d_id, ox_id, rx_id);
}
