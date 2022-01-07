
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dtnfsclient_id ;
 int * dtrace_nfscl_nfs234_done_probe ;
 int * dtrace_nfscl_nfs234_start_probe ;
 int dtrace_unregister (int ) ;

__attribute__((used)) static int
dtnfsclient_unload()
{

 dtrace_nfscl_nfs234_start_probe = ((void*)0);
 dtrace_nfscl_nfs234_done_probe = ((void*)0);

 return (dtrace_unregister(dtnfsclient_id));
}
