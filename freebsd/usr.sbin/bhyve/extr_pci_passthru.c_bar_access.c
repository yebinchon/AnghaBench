
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCIR_BAR (scalar_t__) ;
 scalar_t__ PCI_BARMAX ;

__attribute__((used)) static int
bar_access(int coff)
{
 if (coff >= PCIR_BAR(0) && coff < PCIR_BAR(PCI_BARMAX + 1))
  return (1);
 else
  return (0);
}
