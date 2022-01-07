
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int assert (int) ;
 scalar_t__ roundup2 (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
pci_emul_alloc_resource(uint64_t *baseptr, uint64_t limit, uint64_t size,
   uint64_t *addr)
{
 uint64_t base;

 assert((size & (size - 1)) == 0);

 base = roundup2(*baseptr, size);

 if (base + size <= limit) {
  *addr = base;
  *baseptr = base + size;
  return (0);
 } else
  return (-1);
}
