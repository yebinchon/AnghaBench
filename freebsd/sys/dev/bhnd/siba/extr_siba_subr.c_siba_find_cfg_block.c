
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct siba_devinfo {struct siba_cfg_block* cfg; int core_id; } ;
struct siba_cfg_block {int dummy; } ;
typedef int bhnd_port_type ;


 int siba_cfg_index (int *,int ,size_t,size_t,size_t*) ;

struct siba_cfg_block *
siba_find_cfg_block(struct siba_devinfo *dinfo, bhnd_port_type type, u_int port,
    u_int region)
{
 u_int cfgidx;
 int error;


 error = siba_cfg_index(&dinfo->core_id, type, port, region, &cfgidx);
 if (error)
  return (((void*)0));


 return (&dinfo->cfg[cfgidx]);
}
