
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_table {int dummy; } ;


 int TRACE_IN (struct agent_table* (*) ()) ;
 int TRACE_OUT (struct agent_table* (*) ()) ;
 int assert (int ) ;
 struct agent_table* calloc (int,int) ;

struct agent_table *
init_agent_table(void)
{
    struct agent_table *retval;

 TRACE_IN(init_agent_table);
 retval = calloc(1, sizeof(*retval));
 assert(retval != ((void*)0));

 TRACE_OUT(init_agent_table);
 return (retval);
}
