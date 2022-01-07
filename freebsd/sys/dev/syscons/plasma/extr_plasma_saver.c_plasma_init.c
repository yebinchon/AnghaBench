
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vi_width; int vi_height; } ;
typedef TYPE_1__ video_info_t ;
typedef int video_adapter_t ;
struct TYPE_7__ {int x; int y; int vx; int vy; } ;
struct TYPE_6__ {int r; int g; int b; } ;


 int ENODEV ;
 int FOCI ;
 int LOG_NOTICE ;
 int SAVER_NAME ;
 int log (int ,char*,int ) ;
 scalar_t__* modes ;
 TYPE_4__* plasma_foci ;
 TYPE_3__* plasma_pal ;
 int random () ;
 int scrh ;
 scalar_t__ scrmode ;
 int scrw ;
 scalar_t__ vidd_get_info (int *,scalar_t__,TYPE_1__*) ;

__attribute__((used)) static int
plasma_init(video_adapter_t *adp)
{
 video_info_t info;
 int i;


 for (i = 0; modes[i] >= 0; ++i)
  if (vidd_get_info(adp, modes[i], &info) == 0)
   break;
 if (modes[i] < 0) {
  log(LOG_NOTICE, "%s: no supported video modes\n", SAVER_NAME);
  return (ENODEV);
 }
 scrmode = modes[i];
 scrw = info.vi_width;
 scrh = info.vi_height;


 for (i = 0; i < 256; ++i)
  plasma_pal[i].r = plasma_pal[i].g = plasma_pal[i].b = i;


 for (i = 0; i < FOCI; i++) {
  plasma_foci[i].x = random() % scrw;
  plasma_foci[i].y = random() % scrh;
  plasma_foci[i].vx = random() % 5 - 2;
  plasma_foci[i].vy = random() % 5 - 2;
 }

 return (0);
}
