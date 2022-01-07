
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_queue_update_params {int update_flags; } ;
struct TYPE_2__ {struct ecore_queue_update_params update; } ;
struct ecore_queue_state_params {TYPE_1__ params; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_MEMSET (struct ecore_queue_update_params*,int ,int) ;
 int ECORE_Q_UPDATE_ACTIVATE ;
 int ECORE_Q_UPDATE_ACTIVATE_CHNG ;
 int ECORE_SET_BIT_NA (int ,int *) ;
 int ecore_q_send_update (struct bxe_softc*,struct ecore_queue_state_params*) ;

__attribute__((used)) static inline int ecore_q_send_activate(struct bxe_softc *sc,
     struct ecore_queue_state_params *params)
{
 struct ecore_queue_update_params *update = &params->params.update;

 ECORE_MEMSET(update, 0, sizeof(*update));

 ECORE_SET_BIT_NA(ECORE_Q_UPDATE_ACTIVATE, &update->update_flags);
 ECORE_SET_BIT_NA(ECORE_Q_UPDATE_ACTIVATE_CHNG, &update->update_flags);

 return ecore_q_send_update(sc, params);
}
