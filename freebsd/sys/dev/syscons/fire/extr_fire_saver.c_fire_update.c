
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;


 int SET_ORIGIN (int *,int) ;
 int banksize ;
 int bcopy (int*,scalar_t__,int) ;
 int bpsl ;
 int* buf ;
 int random () ;
 int scrh ;
 int scrw ;
 scalar_t__ vid ;

__attribute__((used)) static void
fire_update(video_adapter_t *adp)
{
 int x, y;
 int o, p;
 int last_origin = -1;


 for (x = 0, y = scrh; x < scrw; x++)
  buf[x + (y * bpsl)] = random() % 160 + 96;


 for (y = 0; y < scrh; y++) {
  for (x = 0; x < scrw; x++) {
   buf[x + (y * scrw)] =
       (buf[(x + 0) + ((y + 0) * scrw)] +
        buf[(x - 1) + ((y + 1) * scrw)] +
        buf[(x + 0) + ((y + 1) * scrw)] +
        buf[(x + 1) + ((y + 1) * scrw)]) / 4;
   if (buf[x + (y * scrw)] > 0)
    buf[x + (y * scrw)]--;
  }
 }


 for (y = 0, p = 0, o = 0; y < scrh; y++, p += bpsl) {
  while (p > banksize) {
   p -= banksize;
   o += banksize;
  }
  SET_ORIGIN(adp, o);
  if (p + scrw < banksize) {
   bcopy(buf + y * scrw, vid + p, scrw);
  } else {
   bcopy(buf + y * scrw, vid + p, banksize - p);
   SET_ORIGIN(adp, o + banksize);
   bcopy(buf + y * scrw + (banksize - p), vid,
         scrw - (banksize - p));
   p -= banksize;
   o += banksize;
  }
 }

}
