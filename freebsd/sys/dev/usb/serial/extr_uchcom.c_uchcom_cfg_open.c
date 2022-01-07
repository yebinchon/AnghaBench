
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_softc {struct uchcom_softc* sc_parent; } ;
struct uchcom_softc {int dummy; } ;


 int DPRINTF (char*) ;
 int uchcom_update_status (struct uchcom_softc*) ;
 int uchcom_update_version (struct uchcom_softc*) ;

__attribute__((used)) static void
uchcom_cfg_open(struct ucom_softc *ucom)
{
 struct uchcom_softc *sc = ucom->sc_parent;

 DPRINTF("\n");

 uchcom_update_version(sc);
 uchcom_update_status(sc);
}
