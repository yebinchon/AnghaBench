
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int lookup; } ;
typedef TYPE_1__ ocs_sport_t ;
typedef int ocs_node_t ;


 int ocs_assert (int ,int *) ;
 int ocs_sport_lock (TYPE_1__*) ;
 int ocs_sport_unlock (TYPE_1__*) ;
 int * spv_get (int ,int ) ;

ocs_node_t *
ocs_node_find(ocs_sport_t *sport, uint32_t port_id)
{
 ocs_node_t *node;

 ocs_assert(sport->lookup, ((void*)0));
 ocs_sport_lock(sport);
  node = spv_get(sport->lookup, port_id);
 ocs_sport_unlock(sport);
 return node;
}
