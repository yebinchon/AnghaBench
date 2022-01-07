
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct ifidx {scalar_t__ kidx; } ;



int
compare_ifidx(const void *k, const void *v)
{
 const struct ifidx *ifidx;
 uint16_t key;

 key = *((const uint16_t *)k);
 ifidx = (const struct ifidx *)v;

 if (key < ifidx->kidx)
  return (-1);
 else if (key > ifidx->kidx)
  return (1);

 return (0);
}
