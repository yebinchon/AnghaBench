
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_softc {int dummy; } ;


 struct vmbus_softc* vmbus_sc ;

__attribute__((used)) static __inline struct vmbus_softc *
vmbus_get_softc(void)
{
 return vmbus_sc;
}
