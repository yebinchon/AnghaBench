
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auth_name {struct auth_name* an_initator_name; TYPE_1__* an_auth_group; } ;
struct TYPE_2__ {int ag_names; } ;


 int TAILQ_REMOVE (int *,struct auth_name*,int ) ;
 int an_next ;
 int free (struct auth_name*) ;

__attribute__((used)) static void
auth_name_delete(struct auth_name *an)
{
 TAILQ_REMOVE(&an->an_auth_group->ag_names, an, an_next);

 free(an->an_initator_name);
 free(an);
}
