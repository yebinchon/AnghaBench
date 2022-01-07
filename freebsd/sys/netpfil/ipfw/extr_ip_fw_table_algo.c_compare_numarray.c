
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct numarray {scalar_t__ number; } ;



int
compare_numarray(const void *k, const void *v)
{
 const struct numarray *na;
 uint32_t key;

 key = *((const uint32_t *)k);
 na = (const struct numarray *)v;

 if (key < na->number)
  return (-1);
 else if (key > na->number)
  return (1);

 return (0);
}
