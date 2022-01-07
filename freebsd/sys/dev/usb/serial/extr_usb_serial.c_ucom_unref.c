
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_super_softc {int sc_refs; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ucom_free_unit (struct ucom_super_softc*) ;
 int ucom_mtx ;

int
ucom_unref(struct ucom_super_softc *ssc)
{
 int retval;

 mtx_lock(&ucom_mtx);
 retval = (ssc->sc_refs < 2);
 ssc->sc_refs--;
 mtx_unlock(&ucom_mtx);

 if (retval)
  ucom_free_unit(ssc);

 return (retval);
}
