
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_disk_softc {int state; scalar_t__* led; } ;
struct bio {int bio_data; } ;





 int g_io_deliver (struct bio*,int ) ;
 int led_set (scalar_t__*,char const*) ;
 int memcpy (int*,int ,int) ;

__attribute__((used)) static void
g_disk_setstate(struct bio *bp, struct g_disk_softc *sc)
{
 const char *cmd;

 memcpy(&sc->state, bp->bio_data, sizeof(sc->state));
 if (sc->led[0] != 0) {
  switch (sc->state) {
  case 130:
   cmd = "1";
   break;
  case 129:
   cmd = "f5";
   break;
  case 128:
   cmd = "f1";
   break;
  default:
   cmd = "0";
   break;
  }
  led_set(sc->led, cmd);
 }
 g_io_deliver(bp, 0);
}
