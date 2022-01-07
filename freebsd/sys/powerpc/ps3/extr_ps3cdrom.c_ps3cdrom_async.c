
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct cam_path {int dummy; } ;



 int xpt_print_path (struct cam_path*) ;

__attribute__((used)) static void
ps3cdrom_async(void *callback_arg, u_int32_t code,
 struct cam_path* path, void *arg)
{
 switch (code) {
 case 128:
  xpt_print_path(path);
  break;
 default:
  break;
 }
}
