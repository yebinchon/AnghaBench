
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct siba_core_id {int num_cfg_blocks; int num_admatch; } ;
typedef int bhnd_port_type ;




 int min (int ,int) ;

u_int
siba_port_count(struct siba_core_id *core_id, bhnd_port_type port_type)
{
 switch (port_type) {
 case 128:

  return (min(core_id->num_admatch, 2));

 case 129:

  if (core_id->num_cfg_blocks > 0)
   return (1);



  return (0);

 default:
  return (0);
 }
}
