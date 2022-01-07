
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_RULES_WLOCK () ;
 int PF_RULES_WUNLOCK () ;
 int * V_pfsync_clear_states_ptr ;
 int * V_pfsync_defer_ptr ;
 int * V_pfsync_delete_state_ptr ;
 int * V_pfsync_insert_state_ptr ;
 int * V_pfsync_state_import_ptr ;
 int * V_pfsync_update_state_ptr ;

__attribute__((used)) static void
pfsync_pointers_uninit()
{

 PF_RULES_WLOCK();
 V_pfsync_state_import_ptr = ((void*)0);
 V_pfsync_insert_state_ptr = ((void*)0);
 V_pfsync_update_state_ptr = ((void*)0);
 V_pfsync_delete_state_ptr = ((void*)0);
 V_pfsync_clear_states_ptr = ((void*)0);
 V_pfsync_defer_ptr = ((void*)0);
 PF_RULES_WUNLOCK();
}
