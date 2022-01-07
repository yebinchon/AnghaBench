
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target {TYPE_1__* t_conf; } ;
struct TYPE_2__ {int conf_targets; } ;


 int TAILQ_REMOVE (int *,struct target*,int ) ;
 int free (struct target*) ;
 int t_next ;

void
target_delete(struct target *targ)
{

 TAILQ_REMOVE(&targ->t_conf->conf_targets, targ, t_next);
 free(targ);
}
