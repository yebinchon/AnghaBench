
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_range_softc {int dummy; } ;


 int MSR_MTRRdefType ;
 int mtrrdef ;
 int wrmsr (int ,int ) ;
 int x86_mrstoreone (struct mem_range_softc*) ;

__attribute__((used)) static void
x86_mrAPinit(struct mem_range_softc *sc)
{

 x86_mrstoreone(sc);
 wrmsr(MSR_MTRRdefType, mtrrdef);
}
