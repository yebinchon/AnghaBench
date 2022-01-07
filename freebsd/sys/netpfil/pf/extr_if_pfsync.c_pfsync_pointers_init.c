
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_RULES_WLOCK () ;
 int PF_RULES_WUNLOCK () ;
 int V_pfsync_clear_states_ptr ;
 int V_pfsync_defer_ptr ;
 int V_pfsync_delete_state_ptr ;
 int V_pfsync_insert_state_ptr ;
 int V_pfsync_state_import_ptr ;
 int V_pfsync_update_state_ptr ;
 int pfsync_clear_states ;
 int pfsync_defer ;
 int pfsync_delete_state ;
 int pfsync_insert_state ;
 int pfsync_state_import ;
 int pfsync_update_state ;

__attribute__((used)) static void
pfsync_pointers_init()
{

 PF_RULES_WLOCK();
 V_pfsync_state_import_ptr = pfsync_state_import;
 V_pfsync_insert_state_ptr = pfsync_insert_state;
 V_pfsync_update_state_ptr = pfsync_update_state;
 V_pfsync_delete_state_ptr = pfsync_delete_state;
 V_pfsync_clear_states_ptr = pfsync_clear_states;
 V_pfsync_defer_ptr = pfsync_defer;
 PF_RULES_WUNLOCK();
}
