
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvscom_softc {int dummy; } ;
struct ucom_softc {struct uvscom_softc* sc_parent; } ;


 int DPRINTF (char*,struct uvscom_softc*) ;
 int UVSCOM_SHUTDOWN ;
 int uvscom_cfg_write (struct uvscom_softc*,int ,int ) ;

__attribute__((used)) static void
uvscom_cfg_close(struct ucom_softc *ucom)
{
 struct uvscom_softc *sc = ucom->sc_parent;

 DPRINTF("sc=%p\n", sc);

 uvscom_cfg_write(sc, UVSCOM_SHUTDOWN, 0);
}
