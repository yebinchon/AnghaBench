
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int vi_mode; } ;
typedef TYPE_1__ video_info_t ;
struct TYPE_11__ {int va_flags; int va_type; } ;
typedef TYPE_2__ video_adapter_t ;
struct TYPE_12__ {scalar_t__ (* get_info ) (TYPE_2__*,int,TYPE_1__*) ;} ;


 int EOT ;
 int NA ;
 int V_ADP_COLOR ;
 TYPE_9__* prevvidsw ;
 scalar_t__ stub1 (TYPE_2__*,int,TYPE_1__*) ;
 TYPE_2__* vesa_adp ;
 int vesa_map_gen_mode_num (int ,int,int) ;
 TYPE_1__* vesa_vmode ;

__attribute__((used)) static int
vesa_get_info(video_adapter_t *adp, int mode, video_info_t *info)
{
 int i;

 if ((*prevvidsw->get_info)(adp, mode, info) == 0)
  return (0);

 if (adp != vesa_adp)
  return (1);

 mode = vesa_map_gen_mode_num(vesa_adp->va_type,
         vesa_adp->va_flags & V_ADP_COLOR, mode);
 for (i = 0; vesa_vmode[i].vi_mode != EOT; ++i) {
  if (vesa_vmode[i].vi_mode == NA)
   continue;
  if (vesa_vmode[i].vi_mode == mode) {
   *info = vesa_vmode[i];
   return (0);
  }
 }
 return (1);
}
