
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct siba_core_id {scalar_t__ num_cfg_blocks; } ;
typedef scalar_t__ bhnd_port_type ;


 scalar_t__ BHND_PORT_AGENT ;
 int ENOENT ;
 scalar_t__ SIBA_MAX_CFG ;
 int siba_is_port_valid (struct siba_core_id*,scalar_t__,scalar_t__) ;

int
siba_cfg_index(struct siba_core_id *core_id, bhnd_port_type port_type,
    u_int port, u_int region, u_int *cfgidx)
{

 if (port_type != BHND_PORT_AGENT)
  return (ENOENT);


 if (!siba_is_port_valid(core_id, port_type, port))
  return (ENOENT);

 if (region >= core_id->num_cfg_blocks)
  return (ENOENT);

 if (region >= SIBA_MAX_CFG)
  return (ENOENT);


 *cfgidx = region;
 return (0);
}
