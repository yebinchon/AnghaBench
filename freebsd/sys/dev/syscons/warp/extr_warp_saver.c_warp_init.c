
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vi_width; int vi_height; } ;
typedef TYPE_1__ video_info_t ;
typedef int video_adapter_t ;


 int ENODEV ;
 int LOG_NOTICE ;
 int M_VGA_CG320 ;
 int SAVER_NAME ;
 int STARS ;
 int log (int ,char*,int ) ;
 int random () ;
 int scrh ;
 int scrmode ;
 int scrw ;
 int* star ;
 int vidd_get_info (int *,int ,TYPE_1__*) ;

__attribute__((used)) static int
warp_init(video_adapter_t *adp)
{
 video_info_t info;
 int i;

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


 for (i = 0; i < STARS; i++)
  star[i] = random() % (scrw * scrh);

 return (0);
}
