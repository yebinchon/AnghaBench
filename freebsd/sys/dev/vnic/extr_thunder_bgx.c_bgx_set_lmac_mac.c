
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct bgx {TYPE_1__* lmac; } ;
struct TYPE_2__ {int mac; } ;


 int ETHER_ADDR_LEN ;
 int MAX_BGX_PER_CN88XX ;
 struct bgx** bgx_vnic ;
 int memcpy (int ,int const*,int ) ;

void
bgx_set_lmac_mac(int node, int bgx_idx, int lmacid, const uint8_t *mac)
{
 struct bgx *bgx = bgx_vnic[(node * MAX_BGX_PER_CN88XX) + bgx_idx];

 if (bgx == ((void*)0))
  return;

 memcpy(bgx->lmac[lmacid].mac, mac, ETHER_ADDR_LEN);
}
