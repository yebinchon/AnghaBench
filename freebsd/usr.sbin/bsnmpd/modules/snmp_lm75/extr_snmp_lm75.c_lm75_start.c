
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lm75_index ;
 int module ;
 int oid_lm75 ;
 int or_register (int *,char*,int ) ;

__attribute__((used)) static void
lm75_start(void)
{

 lm75_index = or_register(&oid_lm75,
     "The MIB module for reading lm75 sensors data.", module);
}
