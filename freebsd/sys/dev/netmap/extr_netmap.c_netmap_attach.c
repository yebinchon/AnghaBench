
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_hw_adapter {int dummy; } ;
struct netmap_adapter {int dummy; } ;


 int netmap_attach_ext (struct netmap_adapter*,int,int) ;

int
netmap_attach(struct netmap_adapter *arg)
{
 return netmap_attach_ext(arg, sizeof(struct netmap_hw_adapter),
   1 );
}
