
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct table_info {int dummy; } ;
struct ifidx {int value; } ;


 struct ifidx* ifidx_find (struct table_info*,void*) ;

__attribute__((used)) static int
ta_lookup_ifidx(struct table_info *ti, void *key, uint32_t keylen,
    uint32_t *val)
{
 struct ifidx *ifi;

 ifi = ifidx_find(ti, key);

 if (ifi != ((void*)0)) {
  *val = ifi->value;
  return (1);
 }

 return (0);
}
