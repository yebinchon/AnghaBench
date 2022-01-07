
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_range_softc {int dummy; } ;


 int smp_rendezvous (int *,void (*) (void*),int *,struct mem_range_softc*) ;
 scalar_t__ x86_mrAPinit ;

__attribute__((used)) static void
x86_mrreinit(struct mem_range_softc *sc)
{

 smp_rendezvous(((void*)0), (void (*)(void *))x86_mrAPinit, ((void*)0), sc);
}
