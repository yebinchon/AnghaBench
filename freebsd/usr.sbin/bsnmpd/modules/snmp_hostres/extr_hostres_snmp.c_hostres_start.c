
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HRDBG (char*) ;
 int host_registration_id ;
 int hostres_module ;
 int oid_host ;
 int or_register (int *,char*,int ) ;
 int start_device_tbl (int ) ;
 int start_network_tbl () ;
 int start_processor_tbl (int ) ;

__attribute__((used)) static void
hostres_start(void)
{

 host_registration_id = or_register(&oid_host,
     "The MIB module for Host Resource MIB (RFC 2790).",
     hostres_module);

 start_device_tbl(hostres_module);
 start_processor_tbl(hostres_module);
 start_network_tbl();

 HRDBG("done.");
}
