
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int dummy; } ;
struct g_attrchanged_args {char const* attr; struct g_provider* pp; } ;


 int ENOMEM ;
 int g_attr_changed_event ;
 int g_free (struct g_attrchanged_args*) ;
 struct g_attrchanged_args* g_malloc (int,int) ;
 int g_post_event (int ,struct g_attrchanged_args*,int,struct g_provider*,int *) ;

int
g_attr_changed(struct g_provider *pp, const char *attr, int flag)
{
 struct g_attrchanged_args *args;
 int error;

 args = g_malloc(sizeof *args, flag);
 if (args == ((void*)0))
  return (ENOMEM);
 args->pp = pp;
 args->attr = attr;
 error = g_post_event(g_attr_changed_event, args, flag, pp, ((void*)0));
 if (error != 0)
  g_free(args);
 return (error);
}
