
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * name; int type; } ;
struct multipart_agent {TYPE_1__ parent; int mp_destroy_func; int mp_lookup_func; int mp_init_func; } ;
struct agent {int dummy; } ;


 int MULTIPART_AGENT ;
 int TRACE_IN (struct agent* (*) ()) ;
 int TRACE_OUT (struct agent* (*) ()) ;
 int assert (int ) ;
 struct multipart_agent* calloc (int,int) ;
 int group_mp_destroy_func ;
 int group_mp_init_func ;
 int group_mp_lookup_func ;
 int * strdup (char*) ;

struct agent *
init_group_mp_agent(void)
{
 struct multipart_agent *retval;

 TRACE_IN(init_group_mp_agent);
 retval = calloc(1,
  sizeof(*retval));
 assert(retval != ((void*)0));

 retval->parent.name = strdup("group");
 retval->parent.type = MULTIPART_AGENT;
 retval->mp_init_func = group_mp_init_func;
 retval->mp_lookup_func = group_mp_lookup_func;
 retval->mp_destroy_func = group_mp_destroy_func;
 assert(retval->parent.name != ((void*)0));

 TRACE_OUT(init_group_mp_agent);
 return ((struct agent *)retval);
}
