
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_func_sp_obj {int state; scalar_t__ pending; } ;
struct bxe_softc {int dummy; } ;
typedef enum ecore_func_state { ____Placeholder_ecore_func_state } ecore_func_state ;


 int ECORE_F_STATE_MAX ;
 int rmb () ;

enum ecore_func_state ecore_func_get_state(struct bxe_softc *sc,
        struct ecore_func_sp_obj *o)
{

 if (o->pending)
  return ECORE_F_STATE_MAX;




 rmb();

 return o->state;
}
