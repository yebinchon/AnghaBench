
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_17__ ;
typedef struct TYPE_18__ TYPE_15__ ;


typedef void* vm_offset_t ;
struct TYPE_21__ {int vi_flags; int vi_buffer_size; int vi_height; int vi_planes; int vi_window_size; int vi_window_gran; int vi_width; int vi_window; int vi_buffer; } ;
typedef TYPE_2__ video_info_t ;
struct TYPE_19__ {int vi_flags; } ;
struct TYPE_20__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_22__ {int va_flags; int va_mode; int va_line_width; int va_window_size; int va_window_gran; int va_buffer_size; size_t va_index; TYPE_17__ va_info; TYPE_1__ va_disp_start; scalar_t__ va_window_orig; void* va_window; void* va_buffer; int va_crtc_addr; int va_initial_bios_mode; int va_type; } ;
typedef TYPE_3__ video_adapter_t ;
struct TYPE_24__ {int v_flags; } ;
struct TYPE_23__ {int (* set_hw_cursor ) (TYPE_3__*,int,int) ;} ;
struct TYPE_18__ {int (* set_mode ) (TYPE_3__*,int) ;scalar_t__ (* get_info ) (TYPE_3__*,int,TYPE_2__*) ;} ;


 int COLOR_CRTC ;
 int MONO_CRTC ;
 int PAT_WRITE_COMBINING ;
 scalar_t__ VESA_MODE (int) ;
 int V_ADP_COLOR ;
 int V_ADP_CWIDTH9 ;
 int V_ADP_DAC8 ;
 int V_DAC8 ;
 int V_INFO_COLOR ;
 int V_INFO_GRAPHICS ;
 int V_INFO_LINEAR ;
 int bcopy (TYPE_2__*,TYPE_17__*,int) ;
 int int10_set_mode (int ) ;
 scalar_t__ pmap_mapdev_attr (int ,int ,int ) ;
 int pmap_unmapdev (void*,int ) ;
 TYPE_15__* prevvidsw ;
 int printf (char*,...) ;
 int stub1 (TYPE_3__*,int) ;
 scalar_t__ stub2 (TYPE_3__*,int,TYPE_2__*) ;
 scalar_t__ stub3 (TYPE_3__*,int) ;
 int stub4 (TYPE_3__*,int,int) ;
 TYPE_3__* vesa_adp ;
 TYPE_8__* vesa_adp_info ;
 int vesa_bios_get_line_length () ;
 int vesa_bios_set_dac (int) ;
 scalar_t__ vesa_bios_set_mode (int) ;
 scalar_t__ vesa_get_info (TYPE_3__*,int,TYPE_2__*) ;
 int vesa_map_gen_mode_num (int ,int,int) ;
 int vesa_vmem_max ;
 TYPE_4__** vidsw ;
 scalar_t__ x86bios_offset (int ) ;

__attribute__((used)) static int
vesa_set_mode(video_adapter_t *adp, int mode)
{
 video_info_t info;

 if (adp != vesa_adp)
  return ((*prevvidsw->set_mode)(adp, mode));

 mode = vesa_map_gen_mode_num(adp->va_type,
         adp->va_flags & V_ADP_COLOR, mode);
 if (VESA_MODE(adp->va_mode)) {
  if (!VESA_MODE(mode) &&
      (*prevvidsw->get_info)(adp, mode, &info) == 0) {
   if ((adp->va_flags & V_ADP_DAC8) != 0) {
    vesa_bios_set_dac(6);
    adp->va_flags &= ~V_ADP_DAC8;
   }
   int10_set_mode(adp->va_initial_bios_mode);
   if (adp->va_info.vi_flags & V_INFO_LINEAR)
    pmap_unmapdev(adp->va_buffer, vesa_vmem_max);




  }
 }


 if (!VESA_MODE(mode) && (*prevvidsw->set_mode)(adp, mode) == 0)
  return (0);


 if (vesa_get_info(adp, mode, &info))
  return (1);
 if (adp->va_flags & V_ADP_DAC8) {
     vesa_bios_set_dac(6);
     adp->va_flags &= ~V_ADP_DAC8;
 }


 if (!(info.vi_flags & V_INFO_GRAPHICS))
  info.vi_flags &= ~V_INFO_LINEAR;

 if ((info.vi_flags & V_INFO_LINEAR) != 0)
  mode |= 0x4000;
 if (vesa_bios_set_mode(mode | 0x8000))
  return (1);

 if ((vesa_adp_info->v_flags & V_DAC8) != 0 &&
     (info.vi_flags & V_INFO_GRAPHICS) != 0 &&
     vesa_bios_set_dac(8) > 6)
  adp->va_flags |= V_ADP_DAC8;

 if (adp->va_info.vi_flags & V_INFO_LINEAR)
  pmap_unmapdev(adp->va_buffer, vesa_vmem_max);




 vesa_adp->va_mode = mode & 0x1ff;
 vesa_adp->va_flags &= ~V_ADP_COLOR;
 vesa_adp->va_flags |=
  (info.vi_flags & V_INFO_COLOR) ? V_ADP_COLOR : 0;
 vesa_adp->va_crtc_addr =
  (vesa_adp->va_flags & V_ADP_COLOR) ? COLOR_CRTC : MONO_CRTC;

 vesa_adp->va_flags &= ~V_ADP_CWIDTH9;
 vesa_adp->va_line_width = info.vi_buffer_size / info.vi_height;
 if ((info.vi_flags & V_INFO_GRAPHICS) != 0)
  vesa_adp->va_line_width /= info.vi_planes;
 if (info.vi_flags & V_INFO_LINEAR) {



  vesa_adp->va_buffer =
      (vm_offset_t)pmap_mapdev_attr(info.vi_buffer,
      vesa_vmem_max, PAT_WRITE_COMBINING);
  vesa_adp->va_window = vesa_adp->va_buffer;
  vesa_adp->va_window_size = info.vi_buffer_size / info.vi_planes;
  vesa_adp->va_window_gran = info.vi_buffer_size / info.vi_planes;
 } else {
  vesa_adp->va_buffer = 0;
  vesa_adp->va_window = (vm_offset_t)x86bios_offset(info.vi_window);
  vesa_adp->va_window_size = info.vi_window_size;
  vesa_adp->va_window_gran = info.vi_window_gran;
 }
 vesa_adp->va_buffer_size = info.vi_buffer_size;
 vesa_adp->va_window_orig = 0;
 vesa_adp->va_disp_start.x = 0;
 vesa_adp->va_disp_start.y = 0;




 bcopy(&info, &vesa_adp->va_info, sizeof(vesa_adp->va_info));


 (*vidsw[vesa_adp->va_index]->set_hw_cursor)(vesa_adp, -1, -1);

 return (0);
}
