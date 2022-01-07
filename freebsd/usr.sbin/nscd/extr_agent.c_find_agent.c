
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agent_table {int agents_num; int agents; } ;
struct agent {char* name; int type; } ;
typedef enum agent_type { ____Placeholder_agent_type } agent_type ;


 int TRACE_IN (struct agent* (*) (struct agent_table*,char const*,int)) ;
 int TRACE_OUT (struct agent* (*) (struct agent_table*,char const*,int)) ;
 int agent_cmp_func ;
 struct agent** bsearch (struct agent**,int ,int ,int,int ) ;

struct agent *
find_agent(struct agent_table *at, const char *name, enum agent_type type)
{
 struct agent **res;
 struct agent model, *model_p;

 TRACE_IN(find_agent);
 model.name = (char *)name;
 model.type = type;
 model_p = &model;
 res = bsearch(&model_p, at->agents, at->agents_num,
  sizeof(struct agent *), agent_cmp_func);

 TRACE_OUT(find_agent);
 return ( res == ((void*)0) ? ((void*)0) : *res);
}
