
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int pci_rombase (int) ;

__attribute__((used)) static int
pci_romsize(uint64_t testval)
{
 int ln2size;

 testval = pci_rombase(testval);
 ln2size = 0;
 if (testval != 0) {
  while ((testval & 1) == 0)
  {
   ln2size++;
   testval >>= 1;
  }
 }
 return (ln2size);
}
