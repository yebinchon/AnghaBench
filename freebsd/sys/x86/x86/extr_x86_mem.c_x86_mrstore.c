
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_range_softc {int dummy; } ;


 int smp_rendezvous (int *,int ,int *,struct mem_range_softc*) ;
 int x86_mrstoreone ;

__attribute__((used)) static void
x86_mrstore(struct mem_range_softc *sc)
{

 smp_rendezvous(((void*)0), x86_mrstoreone, ((void*)0), sc);
}
