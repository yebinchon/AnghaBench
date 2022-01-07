
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;


 int logo_blit (int *,int,int) ;
 scalar_t__ logo_h ;
 scalar_t__ logo_w ;
 scalar_t__ scrh ;
 scalar_t__ scrw ;

__attribute__((used)) static void
logo_update(video_adapter_t *adp)
{
 static int xpos = 0, ypos = 0;
 static int xinc = 1, yinc = 1;


 if ((xpos + logo_w + xinc > scrw) || (xpos + xinc < 0))
  xinc = -xinc;
 if ((ypos + logo_h + yinc > scrh) || (ypos + yinc < 0))
  yinc = -yinc;
 xpos += xinc;
 ypos += yinc;


 logo_blit(adp, xpos, ypos);
}
