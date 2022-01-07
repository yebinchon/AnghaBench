
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct uep_softc {int evdev; } ;
typedef int int32_t ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int DPRINTF (char*,int) ;
 int DPRINTFN (int,char*,int,int) ;
 int evdev_push_abs (int ,int ,int) ;
 int evdev_push_key (int ,int ,int) ;
 int evdev_sync (int ) ;
 int uep_put_queue (struct uep_softc*,int*) ;

__attribute__((used)) static void
uep_process_pkt(struct uep_softc *sc, u_char *buf)
{
 int32_t x, y;




 if ((buf[0] & 0xFE) != 0x80) {
  DPRINTF("bad input packet format 0x%.2x\n", buf[0]);
  return;
 }
 x = (buf[1] << 7) | buf[2];
 y = (buf[3] << 7) | buf[4];

 DPRINTFN(2, "x %u y %u\n", x, y);
 uep_put_queue(sc, buf);

}
