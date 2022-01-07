
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct siba_devinfo {struct siba_addrspace* addrspace; int core_id; } ;
struct siba_addrspace {int dummy; } ;
typedef int bhnd_port_type ;


 size_t SIBA_MAX_ADDRSPACE ;
 int siba_addrspace_index (int *,int ,size_t,size_t,size_t*) ;

struct siba_addrspace *
siba_find_addrspace(struct siba_devinfo *dinfo, bhnd_port_type type, u_int port,
    u_int region)
{
 u_int addridx;
 int error;


 error = siba_addrspace_index(&dinfo->core_id, type, port, region,
     &addridx);
 if (error)
  return (((void*)0));


 if (addridx >= SIBA_MAX_ADDRSPACE)
  return (((void*)0));

 return (&dinfo->addrspace[addridx]);
}
