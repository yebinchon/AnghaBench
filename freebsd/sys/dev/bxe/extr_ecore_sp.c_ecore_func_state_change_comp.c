
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_func_sp_obj {unsigned long pending; int next_state; int state; } ;
struct bxe_softc {int dummy; } ;
typedef enum ecore_func_cmd { ____Placeholder_ecore_func_cmd } ecore_func_cmd ;


 int ECORE_CLEAR_BIT (int,unsigned long*) ;
 int ECORE_ERR (char*,int,int ,int ,unsigned long,int ) ;
 int ECORE_FUNC_ID (struct bxe_softc*) ;
 int ECORE_F_STATE_MAX ;
 int ECORE_INVAL ;
 int ECORE_MSG (struct bxe_softc*,char*,int,int ,int ) ;
 int ECORE_SMP_MB_AFTER_CLEAR_BIT () ;
 int ECORE_SUCCESS ;
 int ECORE_TEST_AND_CLEAR_BIT (int,unsigned long*) ;
 int wmb () ;

__attribute__((used)) static inline int ecore_func_state_change_comp(struct bxe_softc *sc,
            struct ecore_func_sp_obj *o,
            enum ecore_func_cmd cmd)
{
 unsigned long cur_pending = o->pending;

 if (!ECORE_TEST_AND_CLEAR_BIT(cmd, &cur_pending)) {
  ECORE_ERR("Bad MC reply %d for func %d in state %d pending 0x%lx, next_state %d\n",
     cmd, ECORE_FUNC_ID(sc), o->state,
     cur_pending, o->next_state);
  return ECORE_INVAL;
 }

 ECORE_MSG(sc,
    "Completing command %d for func %d, setting state to %d\n",
    cmd, ECORE_FUNC_ID(sc), o->next_state);

 o->state = o->next_state;
 o->next_state = ECORE_F_STATE_MAX;




 wmb();

 ECORE_CLEAR_BIT(cmd, &o->pending);
 ECORE_SMP_MB_AFTER_CLEAR_BIT();

 return ECORE_SUCCESS;
}
