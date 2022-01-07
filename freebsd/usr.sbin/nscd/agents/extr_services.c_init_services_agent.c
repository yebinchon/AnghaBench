
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int * name; } ;
struct common_agent {int lookup_func; TYPE_1__ parent; } ;
struct agent {int dummy; } ;


 int COMMON_AGENT ;
 int TRACE_IN (struct agent* (*) ()) ;
 int TRACE_OUT (struct agent* (*) ()) ;
 int assert (int ) ;
 struct common_agent* calloc (int,int) ;
 int services_lookup_func ;
 int * strdup (char*) ;

struct agent *
init_services_agent(void)
{
 struct common_agent *retval;
 TRACE_IN(init_services_agent);

 retval = calloc(1, sizeof(*retval));
 assert(retval != ((void*)0));

 retval->parent.name = strdup("services");
 assert(retval->parent.name != ((void*)0));

 retval->parent.type = COMMON_AGENT;
 retval->lookup_func = services_lookup_func;

 TRACE_OUT(init_services_agent);
 return ((struct agent *)retval);
}
