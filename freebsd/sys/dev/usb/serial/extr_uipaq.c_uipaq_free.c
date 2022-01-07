
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_softc {int sc_parent; } ;


 int uipaq_free_softc (int ) ;

__attribute__((used)) static void
uipaq_free(struct ucom_softc *ucom)
{
 uipaq_free_softc(ucom->sc_parent);
}
