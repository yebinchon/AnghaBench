
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int dummy; } ;
struct g_consumer {struct g_provider* provider; } ;
struct cdev {struct g_consumer* si_drv2; int * si_devsw; } ;


 int g_dev_cdevsw ;
 int g_topology_assert () ;

struct g_provider *
g_dev_getprovider(struct cdev *dev)
{
 struct g_consumer *cp;

 g_topology_assert();
 if (dev == ((void*)0))
  return (((void*)0));
 if (dev->si_devsw != &g_dev_cdevsw)
  return (((void*)0));
 cp = dev->si_drv2;
 return (cp->provider);
}
