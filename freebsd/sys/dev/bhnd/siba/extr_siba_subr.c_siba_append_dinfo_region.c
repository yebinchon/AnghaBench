
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;
struct siba_devinfo {int resources; struct siba_addrspace* addrspace; } ;
struct siba_addrspace {int sa_base; int sa_size; int sa_bus_reserved; int sa_rid; } ;
typedef int rman_res_t ;


 int EINVAL ;
 int ERANGE ;
 int SYS_RES_MEMORY ;
 int UINT32_MAX ;
 size_t nitems (struct siba_addrspace*) ;
 int resource_list_add_next (int *,int ,int,int,int) ;

__attribute__((used)) static int
siba_append_dinfo_region(struct siba_devinfo *dinfo, uint8_t addridx,
    uint32_t base, uint32_t size, uint32_t bus_reserved)
{
 struct siba_addrspace *sa;
 rman_res_t r_size;


 if (size > 0 && UINT32_MAX - (size - 1) < base)
  return (ERANGE);


 if (size < bus_reserved)
  return (ERANGE);


 if (size == 0)
  return (EINVAL);


 if (addridx >= nitems(dinfo->addrspace))
  return (EINVAL);


 sa = &dinfo->addrspace[addridx];
 sa->sa_base = base;
 sa->sa_size = size;
 sa->sa_bus_reserved = bus_reserved;


 r_size = size - bus_reserved;
 sa->sa_rid = resource_list_add_next(&dinfo->resources, SYS_RES_MEMORY,
     base, base + (r_size - 1), r_size);

 return (0);
}
