
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_exeq_elem {int dummy; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_FREE (struct bxe_softc*,struct ecore_exeq_elem*,int) ;
 int ECORE_MSG (struct bxe_softc*,char*) ;

__attribute__((used)) static inline void ecore_exe_queue_free_elem(struct bxe_softc *sc,
          struct ecore_exeq_elem *elem)
{
 ECORE_MSG(sc, "Deleting an exe_queue element\n");
 ECORE_FREE(sc, elem, sizeof(*elem));
}
