
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef TYPE_2__* if_ctx_t ;
struct TYPE_4__ {int octet; } ;
struct TYPE_5__ {TYPE_1__ ifc_mac; } ;


 int ETHER_ADDR_LEN ;
 int bcopy (int *,int ,int ) ;

void
iflib_set_mac(if_ctx_t ctx, uint8_t mac[ETHER_ADDR_LEN])
{

 bcopy(mac, ctx->ifc_mac.octet, ETHER_ADDR_LEN);
}
