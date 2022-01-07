
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct bhndb_port_priority {scalar_t__ type; size_t port; size_t region; } ;
struct bhndb_hw_priority {size_t num_ports; struct bhndb_port_priority* ports; } ;
struct bhnd_core_info {int dummy; } ;
typedef scalar_t__ bhnd_port_type ;


 struct bhndb_hw_priority* bhndb_hw_priority_find_core (struct bhndb_hw_priority const*,struct bhnd_core_info*) ;

const struct bhndb_port_priority *
bhndb_hw_priorty_find_port(const struct bhndb_hw_priority *table,
    struct bhnd_core_info *core, bhnd_port_type port_type, u_int port,
    u_int region)
{
 const struct bhndb_hw_priority *hp;

 if ((hp = bhndb_hw_priority_find_core(table, core)) == ((void*)0))
  return (((void*)0));

 for (u_int i = 0; i < hp->num_ports; i++) {
  const struct bhndb_port_priority *pp = &hp->ports[i];

  if (pp->type != port_type)
   continue;

  if (pp->port != port)
   continue;

  if (pp->region != region)
   continue;

  return (pp);
 }


 return (((void*)0));
}
