
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct namedobj_instance {struct namedobj_instance* idx_mask; } ;


 int M_IPFW ;
 int free (struct namedobj_instance*,int ) ;

void
ipfw_objhash_destroy(struct namedobj_instance *ni)
{

 free(ni->idx_mask, M_IPFW);
 free(ni, M_IPFW);
}
