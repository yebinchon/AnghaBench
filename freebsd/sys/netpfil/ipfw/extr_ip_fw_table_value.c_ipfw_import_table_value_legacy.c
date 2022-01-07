
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct table_value {void* limit; void* dscp; void* nh4; void* nat; void* fib; void* netgraph; void* skipto; void* divert; void* pipe; void* tag; } ;


 int memset (struct table_value*,int ,int) ;

void
ipfw_import_table_value_legacy(uint32_t value, struct table_value *v)
{

 memset(v, 0, sizeof(*v));
 v->tag = value;
 v->pipe = value;
 v->divert = value;
 v->skipto = value;
 v->netgraph = value;
 v->fib = value;
 v->nat = value;
 v->nh4 = value;
 v->dscp = value;
 v->limit = value;
}
