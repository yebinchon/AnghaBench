
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct csrreg {scalar_t__ key; } ;
struct crom_context {scalar_t__ depth; } ;


 struct csrreg* crom_get (struct crom_context*) ;
 int crom_next (struct crom_context*) ;

struct csrreg *
crom_search_key(struct crom_context *cc, uint8_t key)
{
 struct csrreg *reg;

 while (cc->depth >= 0) {
  reg = crom_get(cc);
  if (reg->key == key)
   return reg;
  crom_next(cc);
 }
 return ((void*)0);
}
