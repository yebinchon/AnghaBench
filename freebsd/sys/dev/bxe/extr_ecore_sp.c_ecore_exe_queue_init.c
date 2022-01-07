
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ecore_qable_obj {int dummy; } ecore_qable_obj ;
struct ecore_exe_queue_obj {int exe_chunk_len; int get; int execute; int optimize; int remove; int validate; union ecore_qable_obj* owner; int lock; int pending_comp; int exe_queue; } ;
struct bxe_softc {int dummy; } ;
typedef int exe_q_validate ;
typedef int exe_q_remove ;
typedef int exe_q_optimize ;
typedef int exe_q_get ;
typedef int exe_q_execute ;


 int ECORE_LIST_INIT (int *) ;
 int ECORE_MEMSET (struct ecore_exe_queue_obj*,int ,int) ;
 int ECORE_MSG (struct bxe_softc*,char*,int) ;
 int ECORE_SPIN_LOCK_INIT (int *,struct bxe_softc*) ;

__attribute__((used)) static inline void ecore_exe_queue_init(struct bxe_softc *sc,
     struct ecore_exe_queue_obj *o,
     int exe_len,
     union ecore_qable_obj *owner,
     exe_q_validate validate,
     exe_q_remove remove,
     exe_q_optimize optimize,
     exe_q_execute exec,
     exe_q_get get)
{
 ECORE_MEMSET(o, 0, sizeof(*o));

 ECORE_LIST_INIT(&o->exe_queue);
 ECORE_LIST_INIT(&o->pending_comp);

 ECORE_SPIN_LOCK_INIT(&o->lock, sc);

 o->exe_chunk_len = exe_len;
 o->owner = owner;


 o->validate = validate;
 o->remove = remove;
 o->optimize = optimize;
 o->execute = exec;
 o->get = get;

 ECORE_MSG(sc, "Setup the execution queue with the chunk length of %d\n",
    exe_len);
}
