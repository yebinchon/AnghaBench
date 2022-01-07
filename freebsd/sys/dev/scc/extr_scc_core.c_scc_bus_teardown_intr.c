
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_mode {int ** ih_src; int * ih_arg; int * ih; scalar_t__ m_fastintr; scalar_t__ m_hasintr; } ;
struct resource {int dummy; } ;
typedef scalar_t__ device_t ;


 int EINVAL ;
 int SCC_ISRCCNT ;
 struct scc_mode* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;

int
scc_bus_teardown_intr(device_t dev, device_t child, struct resource *r,
    void *cookie)
{
 struct scc_mode *m;
 int i;

 if (device_get_parent(child) != dev)
  return (EINVAL);

 m = device_get_ivars(child);
 if (!m->m_hasintr)
  return (EINVAL);

 m->m_hasintr = 0;
 m->m_fastintr = 0;
 m->ih = ((void*)0);
 m->ih_arg = ((void*)0);
 for (i = 0; i < SCC_ISRCCNT; i++)
  m->ih_src[i] = ((void*)0);
 return (0);
}
