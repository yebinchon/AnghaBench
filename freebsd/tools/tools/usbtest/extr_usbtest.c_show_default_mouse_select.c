
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mode ;
typedef int cursor_radius ;
typedef int cursor_interval ;
typedef int button_interval ;


 int G_MOUSE_MODE_BOX ;
 int G_MOUSE_MODE_CIRCLE ;
 int G_MOUSE_MODE_SILENT ;
 int G_MOUSE_MODE_SPIRAL ;
 int USB_TEMP_MOUSE ;
 int errno ;
 int get_integer () ;
 int printf (char*,int,int) ;
 int set_template (int ) ;
 int sysctlbyname (char*,int *,int *,int*,int) ;
 int usb_ts_show_menu (int ,char*,char*,char*,char*,char*,char*,int,int,int) ;

__attribute__((used)) static void
show_default_mouse_select(uint8_t level)
{
 int error;
 int retval;
 int mode = 0;
 int cursor_interval = 128;
 int cursor_radius = 75;
 int button_interval = 0;

 set_template(USB_TEMP_MOUSE);

 while (1) {

  error = sysctlbyname("hw.usb.g_mouse.mode", ((void*)0), ((void*)0),
      &mode, sizeof(mode));

  if (error != 0) {
   printf("WARNING: Could not set mouse mode "
       "to %d (error=%d)\n", mode, errno);
  }
  error = sysctlbyname("hw.usb.g_mouse.cursor_update_interval", ((void*)0), ((void*)0),
      &cursor_interval, sizeof(cursor_interval));

  if (error != 0) {
   printf("WARNING: Could not set cursor update interval "
       "to %d (error=%d)\n", cursor_interval, errno);
  }
  error = sysctlbyname("hw.usb.g_mouse.button_press_interval", ((void*)0), ((void*)0),
      &button_interval, sizeof(button_interval));

  if (error != 0) {
   printf("WARNING: Could not set button press interval "
       "to %d (error=%d)\n", button_interval, errno);
  }
  error = sysctlbyname("hw.usb.g_mouse.cursor_radius", ((void*)0), ((void*)0),
      &cursor_radius, sizeof(cursor_radius));

  if (error != 0) {
   printf("WARNING: Could not set cursor radius "
       "to %d (error=%d)\n", cursor_radius, errno);
  }
  retval = usb_ts_show_menu(level, "Default Mouse Settings",
      "1) Set Silent mode %s\n"
      "2) Set Circle mode %s\n"
      "3) Set Square mode %s\n"
      "4) Set Spiral mode %s\n"
      "5) Change cursor radius: %d pixels\n"
      "6) Change cursor update interval: %d ms\n"
      "7) Change button[0] press interval: %d ms\n"
      "x) Return to previous menu\n"
      "s: Ready for enumeration\n",
      (mode == G_MOUSE_MODE_SILENT) ? "(selected)" : "",
      (mode == G_MOUSE_MODE_CIRCLE) ? "(selected)" : "",
      (mode == G_MOUSE_MODE_BOX) ? "(selected)" : "",
      (mode == G_MOUSE_MODE_SPIRAL) ? "(selected)" : "",
      cursor_radius, cursor_interval, button_interval);

  switch (retval) {
  case 0:
   break;
  case 1:
   mode = G_MOUSE_MODE_SILENT;
   break;
  case 2:
   mode = G_MOUSE_MODE_CIRCLE;
   break;
  case 3:
   mode = G_MOUSE_MODE_BOX;
   break;
  case 4:
   mode = G_MOUSE_MODE_SPIRAL;
   break;
  case 5:
   cursor_radius = get_integer();
   break;
  case 6:
   cursor_interval = get_integer();
   break;
  case 7:
   button_interval = get_integer();
   break;
  default:
   return;
  }
 }
}
