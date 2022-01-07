
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct table_config {scalar_t__ linked; int ti_copy; int astate; TYPE_1__* ta; } ;
struct namedobj_instance {int dummy; } ;
struct TYPE_2__ {int (* destroy ) (int ,int *) ;} ;


 int KASSERT (int,char*) ;
 int M_IPFW ;
 int free (struct table_config*,int ) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void
free_table_config(struct namedobj_instance *ni, struct table_config *tc)
{

 KASSERT(tc->linked == 0, ("free() on linked config"));






 tc->ta->destroy(tc->astate, &tc->ti_copy);
 free(tc, M_IPFW);
}
