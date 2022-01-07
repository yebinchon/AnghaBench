
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int dummy; } ;
struct option {void* o_value; void* o_name; } ;


 int TAILQ_INSERT_TAIL (struct options*,struct option*,int ) ;
 struct option* calloc (int,int) ;
 void* checked_strdup (char const*) ;
 int log_err (int,char*) ;
 int log_warnx (char*,char const*) ;
 int o_next ;
 struct option* option_find (struct options*,char const*) ;

struct option *
option_new(struct options *options, const char *name, const char *value)
{
 struct option *o;

 o = option_find(options, name);
 if (o != ((void*)0)) {
  log_warnx("duplicated option \"%s\"", name);
  return (((void*)0));
 }

 o = calloc(1, sizeof(*o));
 if (o == ((void*)0))
  log_err(1, "calloc");
 o->o_name = checked_strdup(name);
 o->o_value = checked_strdup(value);
 TAILQ_INSERT_TAIL(options, o, o_next);

 return (o);
}
