
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namedobj_instance {int * cmp_f; int * hash_f; } ;
typedef int objhash_hash_f ;
typedef int objhash_cmp_f ;



void
ipfw_objhash_set_funcs(struct namedobj_instance *ni, objhash_hash_f *hash_f,
    objhash_cmp_f *cmp_f)
{

 ni->hash_f = hash_f;
 ni->cmp_f = cmp_f;
}
