
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dtrace_nfsclient_nfs23_start_probe_func_t ;
typedef scalar_t__ dtrace_nfsclient_nfs23_done_probe_func_t ;


 int DTRACE_PRIV_USER ;
 int dtnfsclient_attr ;
 int dtnfsclient_id ;
 int dtnfsclient_pops ;
 scalar_t__ dtrace_nfscl_nfs234_done_probe ;
 scalar_t__ dtrace_nfscl_nfs234_start_probe ;
 scalar_t__ dtrace_probe ;
 scalar_t__ dtrace_register (char*,int *,int ,int *,int *,int *,int *) ;

__attribute__((used)) static void
dtnfsclient_load(void *dummy)
{

 if (dtrace_register("nfscl", &dtnfsclient_attr,
     DTRACE_PRIV_USER, ((void*)0), &dtnfsclient_pops, ((void*)0),
     &dtnfsclient_id) != 0)
  return;

 dtrace_nfscl_nfs234_start_probe =
     (dtrace_nfsclient_nfs23_start_probe_func_t)dtrace_probe;
 dtrace_nfscl_nfs234_done_probe =
     (dtrace_nfsclient_nfs23_done_probe_func_t)dtrace_probe;
}
