
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {int dummy; } ;


 int DPRINTF (struct uath_softc*,int ,char*,char*) ;
 int UATH_DEBUG_LED ;
 int WDCMSG_SET_LED_STATE ;
 int htobe32 (int) ;
 int uath_cmd_write (struct uath_softc*,int ,int*,int,int ) ;

__attribute__((used)) static int
uath_set_ledstate(struct uath_softc *sc, int connected)
{

 DPRINTF(sc, UATH_DEBUG_LED,
     "set led state %sconnected\n", connected ? "" : "!");
 connected = htobe32(connected);
 return uath_cmd_write(sc, WDCMSG_SET_LED_STATE,
      &connected, sizeof connected, 0);
}
