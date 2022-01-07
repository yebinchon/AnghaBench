
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vi_width; int vi_height; } ;
typedef TYPE_1__ video_info_t ;
typedef int video_adapter_t ;
typedef int u_char ;


 size_t BLUE (int) ;
 int ENODEV ;
 size_t GREEN (int) ;
 int LOG_NOTICE ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_VGA_CG320 ;
 size_t RED (int) ;
 int SAVER_NAME ;
 int * buf ;
 int bzero (int *,int) ;
 int* fire_pal ;
 int log (int ,char*,int ) ;
 scalar_t__ malloc (int,int ,int ) ;
 int scrh ;
 int scrmode ;
 int scrw ;
 int vidd_get_info (int *,int ,TYPE_1__*) ;

__attribute__((used)) static int
fire_init(video_adapter_t *adp)
{
 video_info_t info;
 int i, red, green, blue;

 if (!vidd_get_info(adp, M_VGA_CG320, &info)) {
  scrmode = M_VGA_CG320;
 } else {
  log(LOG_NOTICE,
      "%s: the console does not support M_VGA_CG320\n",
      SAVER_NAME);
  return (ENODEV);
 }

 scrw = info.vi_width;
 scrh = info.vi_height;

 buf = (u_char *)malloc(scrw * (scrh + 1), M_DEVBUF, M_NOWAIT);
 if (buf) {
  bzero(buf, scrw * (scrh + 1));
 } else {
  log(LOG_NOTICE,
      "%s: buffer allocation is failed\n",
      SAVER_NAME);
  return (ENODEV);
 }


 red = green = blue = 0;
 for (i = 0; i < 256; i++) {
  red++;
  if (red > 128)
   green += 2;
  fire_pal[RED(i)] = red;
  fire_pal[GREEN(i)] = green;
  fire_pal[BLUE(i)] = blue;
 }

 return (0);
}
