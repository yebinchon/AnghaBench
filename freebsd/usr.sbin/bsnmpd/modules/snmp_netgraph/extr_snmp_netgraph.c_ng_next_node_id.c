
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ng_ID_t ;


 int ng_next_node_id_internal (int ,char const*,char const*,int) ;

ng_ID_t
ng_next_node_id(ng_ID_t node, const char *type, const char *hook)
{
 return (ng_next_node_id_internal(node, type, hook, 1));
}
