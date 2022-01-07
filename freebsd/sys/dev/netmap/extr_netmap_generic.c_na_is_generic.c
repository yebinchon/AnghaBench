
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_adapter {scalar_t__ nm_register; } ;


 scalar_t__ generic_netmap_register ;

int
na_is_generic(struct netmap_adapter *na)
{
 return na->nm_register == generic_netmap_register;
}
