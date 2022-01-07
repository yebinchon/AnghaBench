
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_info {int src; int rsrc; int dst; int rdst; int z_gx; int z_gy; int z_size; scalar_t__ quality; scalar_t__ z_cycle; void* z_dy; void* z_dx; int z_scale; int * z_pcoeff; int * z_dcoeff; int * z_coeff; int * z_resample; scalar_t__ z_alpha; } ;


 int M_DEVBUF ;
 void* Z_FULL_ONE ;
 int Z_ONE ;
 scalar_t__ Z_QUALITY_MAX ;
 scalar_t__ Z_QUALITY_MIN ;
 int feeder_rate_round ;
 int free (int *,int ) ;

__attribute__((used)) static void
z_resampler_reset(struct z_info *info)
{

 info->src = info->rsrc - (info->rsrc % ((feeder_rate_round > 0 &&
     info->rsrc > feeder_rate_round) ? feeder_rate_round : 1));
 info->dst = info->rdst - (info->rdst % ((feeder_rate_round > 0 &&
     info->rdst > feeder_rate_round) ? feeder_rate_round : 1));
 info->z_gx = 1;
 info->z_gy = 1;
 info->z_alpha = 0;
 info->z_resample = ((void*)0);
 info->z_size = 1;
 info->z_coeff = ((void*)0);
 info->z_dcoeff = ((void*)0);
 if (info->z_pcoeff != ((void*)0)) {
  free(info->z_pcoeff, M_DEVBUF);
  info->z_pcoeff = ((void*)0);
 }
 info->z_scale = Z_ONE;
 info->z_dx = Z_FULL_ONE;
 info->z_dy = Z_FULL_ONE;



 if (info->quality < Z_QUALITY_MIN)
  info->quality = Z_QUALITY_MIN;
 else if (info->quality > Z_QUALITY_MAX)
  info->quality = Z_QUALITY_MAX;
}
