
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_object_t ;
struct ksyms_softc {int * sc_obj; } ;


 int LIST_REMOVE (struct ksyms_softc*,int ) ;
 int M_KSYMS ;
 int free (struct ksyms_softc*,int ) ;
 int ksyms_mtx ;
 int sc_list ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vm_object_deallocate (int *) ;

__attribute__((used)) static void
ksyms_cdevpriv_dtr(void *data)
{
 struct ksyms_softc *sc;
 vm_object_t obj;

 sc = (struct ksyms_softc *)data;

 sx_xlock(&ksyms_mtx);
 LIST_REMOVE(sc, sc_list);
 sx_xunlock(&ksyms_mtx);
 obj = sc->sc_obj;
 if (obj != ((void*)0))
  vm_object_deallocate(obj);
 free(sc, M_KSYMS);
}
