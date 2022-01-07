
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct siba_core_id {int num_admatch; int num_cfg_blocks; } ;
typedef int bhnd_port_type ;




 int bhnd_port_type_name (int) ;
 int min (int,int) ;
 int panic (char*,int ,int) ;
 int siba_is_port_valid (struct siba_core_id*,int,int) ;

u_int
siba_port_region_count(struct siba_core_id *core_id, bhnd_port_type port_type,
    u_int port)
{

 if (!siba_is_port_valid(core_id, port_type, port))
  return (0);

 switch (port_type) {
 case 128:

  if (port == 0)
   return (min(core_id->num_admatch, 1));


  if (port == 1 && core_id->num_admatch >= 2)
   return (core_id->num_admatch - 1);

  break;

 case 129:

  if (port == 0)
   return (core_id->num_cfg_blocks);

  break;

 default:
  break;
 }


 panic("siba_is_port_valid() returned true for unknown %s.%u port",
     bhnd_port_type_name(port_type), port);

}
