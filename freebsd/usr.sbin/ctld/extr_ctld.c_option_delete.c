
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int dummy; } ;
struct option {struct option* o_value; struct option* o_name; } ;


 int TAILQ_REMOVE (struct options*,struct option*,int ) ;
 int free (struct option*) ;
 int o_next ;

void
option_delete(struct options *options, struct option *o)
{

 TAILQ_REMOVE(options, o, o_next);
 free(o->o_name);
 free(o->o_value);
 free(o);
}
