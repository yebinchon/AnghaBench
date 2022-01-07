
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dev; } ;


 scalar_t__ pci_find_cap (int ,int,int*) ;

int
t4_os_find_pci_capability(struct adapter *sc, int cap)
{
 int i;

 return (pci_find_cap(sc->dev, cap, &i) == 0 ? i : 0);
}
