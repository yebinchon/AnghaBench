
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_queue_sp_obj {int pending; } ;
struct bxe_softc {int dummy; } ;
typedef enum ecore_queue_cmd { ____Placeholder_ecore_queue_cmd } ecore_queue_cmd ;


 int ecore_state_wait (struct bxe_softc*,int,int *) ;

__attribute__((used)) static int ecore_queue_wait_comp(struct bxe_softc *sc,
     struct ecore_queue_sp_obj *o,
     enum ecore_queue_cmd cmd)
{
 return ecore_state_wait(sc, cmd, &o->pending);
}
