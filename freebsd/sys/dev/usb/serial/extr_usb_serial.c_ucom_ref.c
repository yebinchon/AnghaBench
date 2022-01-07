
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_super_softc {int sc_refs; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ucom_mtx ;

void
ucom_ref(struct ucom_super_softc *ssc)
{
 mtx_lock(&ucom_mtx);
 ssc->sc_refs++;
 mtx_unlock(&ucom_mtx);
}
