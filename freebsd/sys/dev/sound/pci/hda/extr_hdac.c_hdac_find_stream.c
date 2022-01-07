
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdac_softc {int num_iss; int num_oss; int num_bss; TYPE_1__* streams; } ;
struct TYPE_2__ {int stream; } ;



__attribute__((used)) static int
hdac_find_stream(struct hdac_softc *sc, int dir, int stream)
{
 int i, ss;

 ss = -1;

 if (dir == 0) {
  for (i = 0; i < sc->num_iss; i++) {
   if (sc->streams[i].stream == stream) {
    ss = i;
    break;
   }
  }
 } else {
  for (i = 0; i < sc->num_oss; i++) {
   if (sc->streams[i + sc->num_iss].stream == stream) {
    ss = i + sc->num_iss;
    break;
   }
  }
 }

 if (ss == -1) {
  for (i = 0; i < sc->num_bss; i++) {
   if (sc->streams[i + sc->num_iss + sc->num_oss].stream
       == stream) {
    ss = i + sc->num_iss + sc->num_oss;
    break;
   }
  }
 }
 return (ss);
}
