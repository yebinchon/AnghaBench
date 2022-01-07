
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ucom_softc {int dummy; } ;


 int DPRINTF (char*,scalar_t__) ;
 int UCOM_LS_DTR ;
 int ucom_line_state (struct ucom_softc*,int ,int ) ;

__attribute__((used)) static void
ucom_dtr(struct ucom_softc *sc, uint8_t onoff)
{
 DPRINTF("onoff = %d\n", onoff);

 if (onoff)
  ucom_line_state(sc, UCOM_LS_DTR, 0);
 else
  ucom_line_state(sc, 0, UCOM_LS_DTR);
}
