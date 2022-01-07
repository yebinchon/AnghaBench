
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conf {int conf_targets; } ;


 int TAILQ_INIT (int *) ;
 struct conf* calloc (int,int) ;
 int xo_err (int,char*) ;

struct conf *
conf_new(void)
{
 struct conf *conf;

 conf = calloc(1, sizeof(*conf));
 if (conf == ((void*)0))
  xo_err(1, "calloc");

 TAILQ_INIT(&conf->conf_targets);

 return (conf);
}
