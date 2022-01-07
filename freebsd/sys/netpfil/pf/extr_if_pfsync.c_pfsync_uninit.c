
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_PFSYNC ;
 int PF_INET ;
 int SOCK_RAW ;
 int ipproto_unregister (int ) ;
 int pf_proto_unregister (int ,int ,int ) ;
 int * pfsync_detach_ifnet_ptr ;

__attribute__((used)) static void
pfsync_uninit()
{
 pfsync_detach_ifnet_ptr = ((void*)0);





}
