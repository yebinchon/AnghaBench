
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hast_index ;
 int module ;
 int oid_hast ;
 int or_register (int *,char*,int ) ;

__attribute__((used)) static void
hast_start(void)
{
 hast_index = or_register(&oid_hast,
     "The MIB module for BEGEMOT-HAST-MIB.", module);
}
