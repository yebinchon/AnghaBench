
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target {struct conf* t_conf; } ;
struct conf {int conf_targets; } ;


 int TAILQ_INSERT_TAIL (int *,struct target*,int ) ;
 struct target* calloc (int,int) ;
 int t_next ;
 int xo_err (int,char*) ;

struct target *
target_new(struct conf *conf)
{
 struct target *targ;

 targ = calloc(1, sizeof(*targ));
 if (targ == ((void*)0))
  xo_err(1, "calloc");
 targ->t_conf = conf;
 TAILQ_INSERT_TAIL(&conf->conf_targets, targ, t_next);

 return (targ);
}
