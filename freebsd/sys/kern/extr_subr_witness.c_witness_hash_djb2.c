
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static uint32_t
witness_hash_djb2(const uint8_t *key, uint32_t size)
{
 unsigned int hash = 5381;
 int i;


 if (size)
  for (i = 0; i < size; i++)
   hash = ((hash << 5) + hash) + (unsigned int)key[i];
 else
  for (i = 0; key[i] != 0; i++)
   hash = ((hash << 5) + hash) + (unsigned int)key[i];

 return (hash);
}
