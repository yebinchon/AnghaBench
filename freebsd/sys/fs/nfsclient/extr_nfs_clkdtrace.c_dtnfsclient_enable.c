
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ dtrace_id_t ;


 void* dtrace_nfscl_accesscache_flush_done_probe ;
 void* dtrace_nfscl_accesscache_get_hit_probe ;
 void* dtrace_nfscl_accesscache_get_miss_probe ;
 void* dtrace_nfscl_accesscache_load_done_probe ;
 void* dtrace_nfscl_attrcache_flush_done_probe ;
 void* dtrace_nfscl_attrcache_get_hit_probe ;
 void* dtrace_nfscl_attrcache_get_miss_probe ;
 void* dtrace_nfscl_attrcache_load_done_probe ;
 void* dtrace_probe ;
 scalar_t__ nfscl_accesscache_flush_done_id ;
 scalar_t__ nfscl_accesscache_get_hit_id ;
 scalar_t__ nfscl_accesscache_get_miss_id ;
 scalar_t__ nfscl_accesscache_load_done_id ;
 scalar_t__ nfscl_attrcache_flush_done_id ;
 scalar_t__ nfscl_attrcache_get_hit_id ;
 scalar_t__ nfscl_attrcache_get_miss_id ;
 scalar_t__ nfscl_attrcache_load_done_id ;

__attribute__((used)) static void
dtnfsclient_enable(void *arg, dtrace_id_t id, void *parg)
{
 uint32_t *p = parg;
 void *f = dtrace_probe;

 if (id == nfscl_accesscache_flush_done_id)
  dtrace_nfscl_accesscache_flush_done_probe = f;
 else if (id == nfscl_accesscache_get_hit_id)
  dtrace_nfscl_accesscache_get_hit_probe = f;
 else if (id == nfscl_accesscache_get_miss_id)
  dtrace_nfscl_accesscache_get_miss_probe = f;
 else if (id == nfscl_accesscache_load_done_id)
  dtrace_nfscl_accesscache_load_done_probe = f;
 else if (id == nfscl_attrcache_flush_done_id)
  dtrace_nfscl_attrcache_flush_done_probe = f;
 else if (id == nfscl_attrcache_get_hit_id)
  dtrace_nfscl_attrcache_get_hit_probe = f;
 else if (id == nfscl_attrcache_get_miss_id)
  dtrace_nfscl_attrcache_get_miss_probe = f;
 else if (id == nfscl_attrcache_load_done_id)
  dtrace_nfscl_attrcache_load_done_probe = f;
 else
  *p = id;
}
