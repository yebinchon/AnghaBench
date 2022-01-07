
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource {int dummy; } ;
struct fm801_info {struct resource* reg; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int PCIR_BAR (int ) ;
 int SYS_RES_IOPORT ;
 struct fm801_info* pcm_getdevinfo (int ) ;

__attribute__((used)) static struct resource *
fm801_alloc_resource(device_t bus, device_t child, int type, int *rid,
       rman_res_t start, rman_res_t end, rman_res_t count,
       u_int flags)
{
 struct fm801_info *fm801;

 fm801 = pcm_getdevinfo(bus);

 if (type == SYS_RES_IOPORT && *rid == PCIR_BAR(0))
  return (fm801->reg);

 return (((void*)0));
}
