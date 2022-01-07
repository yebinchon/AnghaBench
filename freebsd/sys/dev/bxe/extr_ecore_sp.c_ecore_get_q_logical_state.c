
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_queue_sp_obj {int state; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_INVAL ;
 int ECORE_Q_LOGICAL_STATE_ACTIVE ;
 int ECORE_Q_LOGICAL_STATE_STOPPED ;
int ecore_get_q_logical_state(struct bxe_softc *sc,
          struct ecore_queue_sp_obj *obj)
{
 switch (obj->state) {
 case 136:
 case 131:
  return ECORE_Q_LOGICAL_STATE_ACTIVE;
 case 130:
 case 133:
 case 132:
 case 134:
 case 129:
 case 128:
 case 135:
  return ECORE_Q_LOGICAL_STATE_STOPPED;
 default:
  return ECORE_INVAL;
 }
}
