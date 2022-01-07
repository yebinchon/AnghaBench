
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct siba_core_id {int num_admatch; } ;
typedef scalar_t__ bhnd_port_type ;


 scalar_t__ BHND_PORT_DEVICE ;
 int ENOENT ;
 int siba_is_port_valid (struct siba_core_id*,scalar_t__,int) ;

int
siba_addrspace_index(struct siba_core_id *core_id, bhnd_port_type port_type,
    u_int port, u_int region, u_int *addridx)
{
 u_int idx;


 if (port_type != BHND_PORT_DEVICE)
  return (ENOENT);


 if (!siba_is_port_valid(core_id, port_type, port))
  return (ENOENT);

 if (port == 0)
  idx = region;
 else if (port == 1)
  idx = region + 1;
 else
  return (ENOENT);

 if (idx >= core_id->num_admatch)
  return (ENOENT);


 *addridx = idx;
 return (0);
}
