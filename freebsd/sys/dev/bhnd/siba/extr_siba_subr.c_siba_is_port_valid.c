
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct siba_core_id {int dummy; } ;
typedef int bhnd_port_type ;


 scalar_t__ siba_port_count (struct siba_core_id*,int ) ;

bool
siba_is_port_valid(struct siba_core_id *core_id, bhnd_port_type port_type,
    u_int port)
{

 if (siba_port_count(core_id, port_type) <= port)
  return (0);

 return (1);
}
