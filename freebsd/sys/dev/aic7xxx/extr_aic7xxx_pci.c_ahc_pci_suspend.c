
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int dummy; } ;


 int ahc_suspend (struct ahc_softc*) ;

__attribute__((used)) static int
ahc_pci_suspend(struct ahc_softc *ahc)
{
 return (ahc_suspend(ahc));
}
