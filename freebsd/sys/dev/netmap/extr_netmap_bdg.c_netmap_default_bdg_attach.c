
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm_bridge {int dummy; } ;
struct netmap_adapter {int dummy; } ;


 int NM_NEED_BWRAP ;

int
netmap_default_bdg_attach(const char *name, struct netmap_adapter *na,
  struct nm_bridge *b)
{
 return NM_NEED_BWRAP;
}
