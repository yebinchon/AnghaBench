
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vmbus_softc {int vmbus_gpadl; } ;


 scalar_t__ atomic_fetchadd_int (int *,int) ;

uint32_t
vmbus_gpadl_alloc(struct vmbus_softc *sc)
{
 uint32_t gpadl;

again:
 gpadl = atomic_fetchadd_int(&sc->vmbus_gpadl, 1);
 if (gpadl == 0)
  goto again;
 return (gpadl);
}
