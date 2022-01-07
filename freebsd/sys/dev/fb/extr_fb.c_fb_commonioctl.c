
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int vi_mode; } ;
typedef TYPE_3__ video_info_t ;
struct TYPE_17__ {int y; int x; } ;
typedef TYPE_4__ video_display_start_t ;
struct TYPE_15__ {int y; int x; } ;
struct TYPE_18__ {int va_index; int va_type; int va_mode; int va_line_width; TYPE_2__ va_disp_start; int va_window_orig; int va_initial_bios_mode; int va_initial_mode; int va_buffer_size; int va_buffer; int va_window_gran; int va_window_size; int va_window; int va_mem_size; int va_mem_base; int va_crtc_addr; int va_io_size; int va_io_base; int va_flags; int va_unit; int va_name; } ;
typedef TYPE_5__ video_adapter_t ;
struct TYPE_14__ {int y; int x; } ;
struct TYPE_19__ {int va_index; int va_type; int va_mode; TYPE_1__ va_disp_start; int va_line_width; int va_initial_bios_mode; int va_initial_mode; int va_buffer_size; void* va_unused0; int va_window_orig; int va_window_gran; int va_window_size; void* va_window; int va_mem_size; int va_mem_base; int va_crtc_addr; int va_io_size; int va_io_base; int va_flags; int va_unit; int va_name; } ;
typedef TYPE_6__ video_adapter_info_t ;
typedef int u_long ;
typedef int u_int ;
typedef scalar_t__ caddr_t ;


 int ENODEV ;
 int bcopy (int ,int ,int ) ;
 int imin (int ,int) ;
 int spltty () ;
 int splx (int) ;
 int strlen (int ) ;
 int vidd_blank_display (TYPE_5__*,int) ;
 int vidd_get_info (TYPE_5__*,int ,TYPE_3__*) ;
 int vidd_query_mode (TYPE_5__*,TYPE_3__*) ;
 int vidd_set_mode (TYPE_5__*,int) ;
 void* vtophys (int ) ;

int
fb_commonioctl(video_adapter_t *adp, u_long cmd, caddr_t arg)
{
 int error;
 int s;



 error = 0;
 s = spltty();

 switch (cmd) {

 case 143:
  *(int *)arg = adp->va_index;
  break;

 case 141:
  *(int *)arg = adp->va_type;
  break;

 case 142:
         ((video_adapter_info_t *)arg)->va_index = adp->va_index;
  ((video_adapter_info_t *)arg)->va_type = adp->va_type;
  bcopy(adp->va_name, ((video_adapter_info_t *)arg)->va_name,
        imin(strlen(adp->va_name) + 1,
      sizeof(((video_adapter_info_t *)arg)->va_name)));
  ((video_adapter_info_t *)arg)->va_unit = adp->va_unit;
  ((video_adapter_info_t *)arg)->va_flags = adp->va_flags;
  ((video_adapter_info_t *)arg)->va_io_base = adp->va_io_base;
  ((video_adapter_info_t *)arg)->va_io_size = adp->va_io_size;
  ((video_adapter_info_t *)arg)->va_crtc_addr = adp->va_crtc_addr;
  ((video_adapter_info_t *)arg)->va_mem_base = adp->va_mem_base;
  ((video_adapter_info_t *)arg)->va_mem_size = adp->va_mem_size;
  ((video_adapter_info_t *)arg)->va_window

   = vtophys(adp->va_window);



  ((video_adapter_info_t *)arg)->va_window_size
   = adp->va_window_size;
  ((video_adapter_info_t *)arg)->va_window_gran
   = adp->va_window_gran;
  ((video_adapter_info_t *)arg)->va_window_orig
   = adp->va_window_orig;
  ((video_adapter_info_t *)arg)->va_unused0

   = adp->va_buffer != 0 ? vtophys(adp->va_buffer) : 0;



  ((video_adapter_info_t *)arg)->va_buffer_size
   = adp->va_buffer_size;
  ((video_adapter_info_t *)arg)->va_mode = adp->va_mode;
  ((video_adapter_info_t *)arg)->va_initial_mode
   = adp->va_initial_mode;
  ((video_adapter_info_t *)arg)->va_initial_bios_mode
   = adp->va_initial_bios_mode;
  ((video_adapter_info_t *)arg)->va_line_width
   = adp->va_line_width;
  ((video_adapter_info_t *)arg)->va_disp_start.x
   = adp->va_disp_start.x;
  ((video_adapter_info_t *)arg)->va_disp_start.y
   = adp->va_disp_start.y;
  break;

 case 133:
  error = vidd_get_info(adp,
      ((video_info_t *)arg)->vi_mode,
      (video_info_t *)arg);
  if (error)
   error = ENODEV;
  break;

 case 139:
  error = vidd_query_mode(adp, (video_info_t *)arg);
  break;

 case 136:
  *(int *)arg = adp->va_mode;
  break;

 case 130:
  error = vidd_set_mode(adp, *(int *)arg);
  if (error)
   error = ENODEV;
  break;

 case 134:
  *(u_int *)arg = adp->va_window_orig;
  break;

 case 138:
  ((video_display_start_t *)arg)->x = adp->va_disp_start.x;
  ((video_display_start_t *)arg)->y = adp->va_disp_start.y;
  break;

 case 137:
  *(u_int *)arg = adp->va_line_width;
  break;

 case 140:
  error = vidd_blank_display(adp, *(int *)arg);
  break;

 case 135:
 case 129:


 case 149:
 case 155:
 case 148:
 case 154:


 case 128:
 case 132:
 case 131:

 case 153:
 case 159:
 case 145:
 case 152:
 case 144:
 case 146:
 case 156:
 case 147:
 case 157:
 case 158:
 case 150:
 case 151:

 default:
  error = ENODEV;
  break;
 }

 splx(s);
 return error;
}
