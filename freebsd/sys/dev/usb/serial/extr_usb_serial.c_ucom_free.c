
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucom_softc {int sc_super; TYPE_1__* sc_callback; } ;
struct TYPE_2__ {int (* ucom_free ) (struct ucom_softc*) ;} ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct ucom_softc*) ;
 int ucom_close_refs ;
 int ucom_mtx ;
 int ucom_unref (int ) ;

__attribute__((used)) static void
ucom_free(void *xsc)
{
 struct ucom_softc *sc = xsc;

 if (sc->sc_callback->ucom_free != ((void*)0))
  sc->sc_callback->ucom_free(sc);
 else
  ucom_unref(sc->sc_super);

 mtx_lock(&ucom_mtx);
 ucom_close_refs--;
 mtx_unlock(&ucom_mtx);
}
