
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgx {int lmac_count; } ;


 int MAX_BGX_PER_CN88XX ;
 struct bgx** bgx_vnic ;

int
bgx_get_lmac_count(int node, int bgx_idx)
{
 struct bgx *bgx;

 bgx = bgx_vnic[(node * MAX_BGX_PER_CN88XX) + bgx_idx];
 if (bgx != ((void*)0))
  return (bgx->lmac_count);

 return (0);
}
