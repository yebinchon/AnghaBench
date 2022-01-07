
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dtrace_probedesc_t ;
struct TYPE_2__ {int * nr_v4_name; void* nr_v4_id_done; void* nr_v4_id_start; int * nr_v3_name; void* nr_v3_id_done; void* nr_v3_id_start; int * nr_v2_name; void* nr_v2_id_done; void* nr_v2_id_start; } ;


 int NFSV41_NPROCS ;
 int dtnfsclient_accesscache_str ;
 int dtnfsclient_attrcache_str ;
 int dtnfsclient_done_str ;
 int * dtnfsclient_flush_str ;
 int * dtnfsclient_get_str ;
 int dtnfsclient_hit_str ;
 int dtnfsclient_id ;
 int * dtnfsclient_load_str ;
 int dtnfsclient_miss_str ;
 int dtnfsclient_nfs2_str ;
 int dtnfsclient_nfs3_str ;
 int dtnfsclient_nfs4_str ;
 TYPE_1__* dtnfsclient_rpcs ;
 int dtnfsclient_start_str ;
 void* dtrace_probe_create (int ,int ,int *,int ,int ,int *) ;
 scalar_t__ dtrace_probe_lookup (int ,int ,int *,int ) ;
 void* nfscl_accesscache_flush_done_id ;
 void* nfscl_accesscache_get_hit_id ;
 void* nfscl_accesscache_get_miss_id ;
 void* nfscl_accesscache_load_done_id ;
 void* nfscl_attrcache_flush_done_id ;
 void* nfscl_attrcache_get_hit_id ;
 void* nfscl_attrcache_get_miss_id ;
 void* nfscl_attrcache_load_done_id ;
 int * nfscl_nfs2_done_probes ;
 int * nfscl_nfs2_start_probes ;
 int * nfscl_nfs3_done_probes ;
 int * nfscl_nfs3_start_probes ;
 int * nfscl_nfs4_done_probes ;
 int * nfscl_nfs4_start_probes ;

__attribute__((used)) static void
dtnfsclient_provide(void *arg, dtrace_probedesc_t *desc)
{
 int i;

 if (desc != ((void*)0))
  return;




 if (dtrace_probe_lookup(dtnfsclient_id, dtnfsclient_accesscache_str,
     dtnfsclient_flush_str, dtnfsclient_done_str) == 0) {
  nfscl_accesscache_flush_done_id = dtrace_probe_create(
      dtnfsclient_id, dtnfsclient_accesscache_str,
      dtnfsclient_flush_str, dtnfsclient_done_str, 0, ((void*)0));
 }
 if (dtrace_probe_lookup(dtnfsclient_id, dtnfsclient_accesscache_str,
     dtnfsclient_get_str, dtnfsclient_hit_str) == 0) {
  nfscl_accesscache_get_hit_id = dtrace_probe_create(
      dtnfsclient_id, dtnfsclient_accesscache_str,
      dtnfsclient_get_str, dtnfsclient_hit_str, 0, ((void*)0));
 }
 if (dtrace_probe_lookup(dtnfsclient_id, dtnfsclient_accesscache_str,
     dtnfsclient_get_str, dtnfsclient_miss_str) == 0) {
  nfscl_accesscache_get_miss_id = dtrace_probe_create(
      dtnfsclient_id, dtnfsclient_accesscache_str,
      dtnfsclient_get_str, dtnfsclient_miss_str, 0, ((void*)0));
 }
 if (dtrace_probe_lookup(dtnfsclient_id, dtnfsclient_accesscache_str,
     dtnfsclient_load_str, dtnfsclient_done_str) == 0) {
  nfscl_accesscache_load_done_id = dtrace_probe_create(
      dtnfsclient_id, dtnfsclient_accesscache_str,
      dtnfsclient_load_str, dtnfsclient_done_str, 0, ((void*)0));
 }




 if (dtrace_probe_lookup(dtnfsclient_id, dtnfsclient_attrcache_str,
     dtnfsclient_flush_str, dtnfsclient_done_str) == 0) {
  nfscl_attrcache_flush_done_id = dtrace_probe_create(
      dtnfsclient_id, dtnfsclient_attrcache_str,
      dtnfsclient_flush_str, dtnfsclient_done_str, 0, ((void*)0));
 }
 if (dtrace_probe_lookup(dtnfsclient_id, dtnfsclient_attrcache_str,
     dtnfsclient_get_str, dtnfsclient_hit_str) == 0) {
  nfscl_attrcache_get_hit_id = dtrace_probe_create(
      dtnfsclient_id, dtnfsclient_attrcache_str,
      dtnfsclient_get_str, dtnfsclient_hit_str, 0, ((void*)0));
 }
 if (dtrace_probe_lookup(dtnfsclient_id, dtnfsclient_attrcache_str,
     dtnfsclient_get_str, dtnfsclient_miss_str) == 0) {
  nfscl_attrcache_get_miss_id = dtrace_probe_create(
      dtnfsclient_id, dtnfsclient_attrcache_str,
      dtnfsclient_get_str, dtnfsclient_miss_str, 0, ((void*)0));
 }
 if (dtrace_probe_lookup(dtnfsclient_id, dtnfsclient_attrcache_str,
     dtnfsclient_load_str, dtnfsclient_done_str) == 0) {
  nfscl_attrcache_load_done_id = dtrace_probe_create(
      dtnfsclient_id, dtnfsclient_attrcache_str,
      dtnfsclient_load_str, dtnfsclient_done_str, 0, ((void*)0));
 }





 for (i = 0; i < NFSV41_NPROCS + 1; i++) {
  if (dtnfsclient_rpcs[i].nr_v2_name != ((void*)0) &&
      dtrace_probe_lookup(dtnfsclient_id, dtnfsclient_nfs2_str,
      dtnfsclient_rpcs[i].nr_v2_name, dtnfsclient_start_str) ==
      0) {
   dtnfsclient_rpcs[i].nr_v2_id_start =
       dtrace_probe_create(dtnfsclient_id,
       dtnfsclient_nfs2_str,
       dtnfsclient_rpcs[i].nr_v2_name,
       dtnfsclient_start_str, 0,
       &nfscl_nfs2_start_probes[i]);
  }
  if (dtnfsclient_rpcs[i].nr_v2_name != ((void*)0) &&
      dtrace_probe_lookup(dtnfsclient_id, dtnfsclient_nfs2_str,
      dtnfsclient_rpcs[i].nr_v2_name, dtnfsclient_done_str) ==
      0) {
   dtnfsclient_rpcs[i].nr_v2_id_done =
       dtrace_probe_create(dtnfsclient_id,
       dtnfsclient_nfs2_str,
       dtnfsclient_rpcs[i].nr_v2_name,
       dtnfsclient_done_str, 0,
       &nfscl_nfs2_done_probes[i]);
  }
 }





 for (i = 0; i < NFSV41_NPROCS + 1; i++) {
  if (dtnfsclient_rpcs[i].nr_v3_name != ((void*)0) &&
      dtrace_probe_lookup(dtnfsclient_id, dtnfsclient_nfs3_str,
      dtnfsclient_rpcs[i].nr_v3_name, dtnfsclient_start_str) ==
      0) {
   dtnfsclient_rpcs[i].nr_v3_id_start =
       dtrace_probe_create(dtnfsclient_id,
       dtnfsclient_nfs3_str,
       dtnfsclient_rpcs[i].nr_v3_name,
       dtnfsclient_start_str, 0,
       &nfscl_nfs3_start_probes[i]);
  }
  if (dtnfsclient_rpcs[i].nr_v3_name != ((void*)0) &&
      dtrace_probe_lookup(dtnfsclient_id, dtnfsclient_nfs3_str,
      dtnfsclient_rpcs[i].nr_v3_name, dtnfsclient_done_str) ==
      0) {
   dtnfsclient_rpcs[i].nr_v3_id_done =
       dtrace_probe_create(dtnfsclient_id,
       dtnfsclient_nfs3_str,
       dtnfsclient_rpcs[i].nr_v3_name,
       dtnfsclient_done_str, 0,
       &nfscl_nfs3_done_probes[i]);
  }
 }




 for (i = 0; i < NFSV41_NPROCS + 1; i++) {
  if (dtrace_probe_lookup(dtnfsclient_id, dtnfsclient_nfs4_str,
      dtnfsclient_rpcs[i].nr_v4_name, dtnfsclient_start_str) ==
      0) {
   dtnfsclient_rpcs[i].nr_v4_id_start =
       dtrace_probe_create(dtnfsclient_id,
       dtnfsclient_nfs4_str,
       dtnfsclient_rpcs[i].nr_v4_name,
       dtnfsclient_start_str, 0,
       &nfscl_nfs4_start_probes[i]);
  }
  if (dtrace_probe_lookup(dtnfsclient_id, dtnfsclient_nfs4_str,
      dtnfsclient_rpcs[i].nr_v4_name, dtnfsclient_done_str) ==
      0) {
   dtnfsclient_rpcs[i].nr_v4_id_done =
       dtrace_probe_create(dtnfsclient_id,
       dtnfsclient_nfs4_str,
       dtnfsclient_rpcs[i].nr_v4_name,
       dtnfsclient_done_str, 0,
       &nfscl_nfs4_done_probes[i]);
  }
 }
}
