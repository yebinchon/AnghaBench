
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;


 int SET_ORIGIN (int *,int) ;
 int banksize ;
 int bcopy (scalar_t__,scalar_t__,int) ;
 int bpsl ;
 scalar_t__ logo_img ;
 int logo_img_size ;
 int logo_w ;
 scalar_t__ vid ;

__attribute__((used)) static void
logo_blit(video_adapter_t *adp, int x, int y)
{
 int d, l, o, p;
 int last_origin = -1;

 for (o = 0, p = y * bpsl + x; p > banksize; p -= banksize)
  o += banksize;
 SET_ORIGIN(adp, o);

 for (d = 0; d < logo_img_size; d += logo_w) {
  if (p + logo_w < banksize) {
   bcopy(logo_img + d, vid + p, logo_w);
   p += bpsl;
  } else if (p < banksize) {
   l = banksize - p;
   bcopy(logo_img + d, vid + p, l);
   SET_ORIGIN(adp, (o += banksize));
   bcopy(logo_img + d + l, vid, logo_w - l);
   p += bpsl - banksize;
  } else {
   p -= banksize;
   SET_ORIGIN(adp, (o += banksize));
   bcopy(logo_img + d, vid + p, logo_w);
   p += bpsl;
  }
 }
}
