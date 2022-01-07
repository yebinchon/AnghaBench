
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_exeq_elem {int link; } ;
struct ecore_exe_queue_obj {int (* optimize ) (struct bxe_softc*,int ,struct ecore_exeq_elem*) ;int (* validate ) (struct bxe_softc*,int ,struct ecore_exeq_elem*) ;int lock; int exe_queue; int owner; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_LIST_PUSH_TAIL (int *,int *) ;
 int ECORE_MSG (struct bxe_softc*,char*,int) ;
 int ECORE_SPIN_LOCK_BH (int *) ;
 int ECORE_SPIN_UNLOCK_BH (int *) ;
 int ECORE_SUCCESS ;
 int ecore_exe_queue_free_elem (struct bxe_softc*,struct ecore_exeq_elem*) ;
 int stub1 (struct bxe_softc*,int ,struct ecore_exeq_elem*) ;
 int stub2 (struct bxe_softc*,int ,struct ecore_exeq_elem*) ;

__attribute__((used)) static inline int ecore_exe_queue_add(struct bxe_softc *sc,
          struct ecore_exe_queue_obj *o,
          struct ecore_exeq_elem *elem,
          bool restore)
{
 int rc;

 ECORE_SPIN_LOCK_BH(&o->lock);

 if (!restore) {

  rc = o->optimize(sc, o->owner, elem);
  if (rc)
   goto free_and_exit;


  rc = o->validate(sc, o->owner, elem);
  if (rc) {
   ECORE_MSG(sc, "Preamble failed: %d\n", rc);
   goto free_and_exit;
  }
 }


 ECORE_LIST_PUSH_TAIL(&elem->link, &o->exe_queue);

 ECORE_SPIN_UNLOCK_BH(&o->lock);

 return ECORE_SUCCESS;

free_and_exit:
 ecore_exe_queue_free_elem(sc, elem);

 ECORE_SPIN_UNLOCK_BH(&o->lock);

 return rc;
}
