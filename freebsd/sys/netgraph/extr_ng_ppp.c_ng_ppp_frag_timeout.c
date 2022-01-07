
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_p ;
typedef int hook_p ;


 scalar_t__ NG_NODE_NOT_VALID (int ) ;
 int ng_ppp_frag_checkstale (int ) ;
 int ng_ppp_start_frag_timer (int ) ;

__attribute__((used)) static void
ng_ppp_frag_timeout(node_p node, hook_p hook, void *arg1, int arg2)
{

 if (NG_NODE_NOT_VALID(node))
  return;


 ng_ppp_frag_checkstale(node);


 ng_ppp_start_frag_timer(node);
}
