
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_bdg_ops {int (* bwrap_attach ) (char const*,struct netmap_adapter*) ;} ;
struct netmap_adapter {int dummy; } ;


 int stub1 (char const*,struct netmap_adapter*) ;

int
netmap_bwrap_attach(const char *nr_name, struct netmap_adapter *hwna,
  struct netmap_bdg_ops *ops)
{
 return ops->bwrap_attach(nr_name, hwna);
}
