
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_mgmt_method_table {struct ib_mad_agent_private** agent; } ;
struct ib_mad_agent_private {int dummy; } ;


 int IB_MGMT_MAX_METHODS ;

__attribute__((used)) static void remove_methods_mad_agent(struct ib_mad_mgmt_method_table *method,
         struct ib_mad_agent_private *agent)
{
 int i;


 for (i = 0; i < IB_MGMT_MAX_METHODS; i++) {
  if (method->agent[i] == agent) {
   method->agent[i] = ((void*)0);
  }
 }
}
