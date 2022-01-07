
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bgx {int dummy; } ;


 scalar_t__ BGX_CMRX_RX_STAT0 ;
 int MAX_BGX_PER_CN88XX ;
 int bgx_reg_read (struct bgx*,int,scalar_t__) ;
 struct bgx** bgx_vnic ;

uint64_t
bgx_get_rx_stats(int node, int bgx_idx, int lmac, int idx)
{
 struct bgx *bgx;

 bgx = bgx_vnic[(node * MAX_BGX_PER_CN88XX) + bgx_idx];
 if (bgx == ((void*)0))
  return (0);

 if (idx > 8)
  lmac = (0);
 return (bgx_reg_read(bgx, lmac, BGX_CMRX_RX_STAT0 + (idx * 8)));
}
