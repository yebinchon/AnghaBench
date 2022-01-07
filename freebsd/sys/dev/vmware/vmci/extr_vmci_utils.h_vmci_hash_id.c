
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int vmci_id ;
typedef int uint8_t ;
typedef int id ;



__attribute__((used)) static inline int
vmci_hash_id(vmci_id id, unsigned size)
{
 unsigned i;
 int hash = 5381;

 for (i = 0; i < sizeof(id); i++)
  hash = ((hash << 5) + hash) + (uint8_t)(id >> (i * 8));

 return (hash & (size - 1));
}
