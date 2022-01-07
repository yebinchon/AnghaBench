
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {int dummy; } ;
struct uath_cmd_ledsteady {void* ledmode; void* lednum; } ;


 int DPRINTF (struct uath_softc*,int ,char*,char*,char*) ;
 int UATH_DEBUG_LED ;
 int UATH_LED_LINK ;
 int WDCMSG_SET_LED_STEADY ;
 void* htobe32 (int) ;
 int uath_cmd_write (struct uath_softc*,int ,struct uath_cmd_ledsteady*,int,int ) ;

__attribute__((used)) static int
uath_set_ledsteady(struct uath_softc *sc, int lednum, int ledmode)
{
 struct uath_cmd_ledsteady led;

 led.lednum = htobe32(lednum);
 led.ledmode = htobe32(ledmode);

 DPRINTF(sc, UATH_DEBUG_LED, "set %s led %s (steady)\n",
     (lednum == UATH_LED_LINK) ? "link" : "activity",
     ledmode ? "on" : "off");
 return uath_cmd_write(sc, WDCMSG_SET_LED_STEADY, &led, sizeof led, 0);
}
