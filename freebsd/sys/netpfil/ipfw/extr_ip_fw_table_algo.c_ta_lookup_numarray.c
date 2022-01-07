
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct table_info {int dummy; } ;
struct numarray {int value; } ;


 struct numarray* numarray_find (struct table_info*,void*) ;

__attribute__((used)) static int
ta_lookup_numarray(struct table_info *ti, void *key, uint32_t keylen,
    uint32_t *val)
{
 struct numarray *ri;

 ri = numarray_find(ti, key);

 if (ri != ((void*)0)) {
  *val = ri->value;
  return (1);
 }

 return (0);
}
