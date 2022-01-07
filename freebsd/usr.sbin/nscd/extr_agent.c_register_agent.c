
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_table {int agents_num; struct agent** agents; } ;
struct agent {int dummy; } ;


 int TRACE_IN (void (*) (struct agent_table*,struct agent*)) ;
 int TRACE_OUT (void (*) (struct agent_table*,struct agent*)) ;
 int agent_cmp_func ;
 int assert (int ) ;
 int free (struct agent**) ;
 struct agent** malloc (int) ;
 int memcpy (struct agent**,struct agent**,int) ;
 int qsort (struct agent**,size_t,int,int ) ;

void
register_agent(struct agent_table *at, struct agent *a)
{
 struct agent **new_agents;
     size_t new_agents_num;

 TRACE_IN(register_agent);
 assert(at != ((void*)0));
 assert(a != ((void*)0));
 new_agents_num = at->agents_num + 1;
 new_agents = malloc(sizeof(*new_agents) *
  new_agents_num);
 assert(new_agents != ((void*)0));
 memcpy(new_agents, at->agents, at->agents_num * sizeof(struct agent *));
 new_agents[new_agents_num - 1] = a;
 qsort(new_agents, new_agents_num, sizeof(struct agent *),
  agent_cmp_func);

 free(at->agents);
 at->agents = new_agents;
 at->agents_num = new_agents_num;
     TRACE_OUT(register_agent);
}
