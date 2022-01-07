
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_adapter {scalar_t__ nm_register; } ;


 scalar_t__ netmap_bwrap_reg ;

int
nm_is_bwrap(struct netmap_adapter *na)
{
 return na->nm_register == netmap_bwrap_reg;
}
