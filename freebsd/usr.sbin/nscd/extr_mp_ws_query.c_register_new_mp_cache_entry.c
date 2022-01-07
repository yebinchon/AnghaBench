
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct query_state {TYPE_3__* config_entry; } ;
struct cache_entry_params {int dummy; } ;
typedef int cache_entry ;
struct TYPE_6__ {char* entry_name; } ;
struct TYPE_7__ {TYPE_1__ cep; } ;
struct TYPE_8__ {TYPE_2__ mp_cache_params; } ;


 int CELT_MULTIPART ;
 int INVALID_CACHE_ENTRY ;
 int TRACE_IN (int (*) (struct query_state*,char const*)) ;
 int TRACE_OUT (int (*) (struct query_state*,char const*)) ;
 int configuration_entry_add_mp_cache_entry (TYPE_3__*,int ) ;
 int configuration_lock_entry (TYPE_3__*,int ) ;
 int configuration_lock_rdlock (int ) ;
 int configuration_lock_wrlock (int ) ;
 int configuration_unlock (int ) ;
 int configuration_unlock_entry (TYPE_3__*,int ) ;
 int find_cache_entry (int ,char const*) ;
 int register_cache_entry (int ,struct cache_entry_params*) ;
 int s_cache ;
 int s_configuration ;

cache_entry register_new_mp_cache_entry(struct query_state *qstate,
 const char *dec_cache_entry_name)
{
 cache_entry c_entry;
 char *en_bkp;

 TRACE_IN(register_new_mp_cache_entry);
 c_entry = INVALID_CACHE_ENTRY;
 configuration_lock_entry(qstate->config_entry, CELT_MULTIPART);

 configuration_lock_wrlock(s_configuration);
 en_bkp = qstate->config_entry->mp_cache_params.cep.entry_name;
 qstate->config_entry->mp_cache_params.cep.entry_name =
  (char *)dec_cache_entry_name;
 register_cache_entry(s_cache, (struct cache_entry_params *)
  &qstate->config_entry->mp_cache_params);
 qstate->config_entry->mp_cache_params.cep.entry_name = en_bkp;
 configuration_unlock(s_configuration);

 configuration_lock_rdlock(s_configuration);
 c_entry = find_cache_entry(s_cache,
  dec_cache_entry_name);
 configuration_unlock(s_configuration);

 configuration_entry_add_mp_cache_entry(qstate->config_entry,
  c_entry);

 configuration_unlock_entry(qstate->config_entry,
  CELT_MULTIPART);

 TRACE_OUT(register_new_mp_cache_entry);
 return (c_entry);
}
