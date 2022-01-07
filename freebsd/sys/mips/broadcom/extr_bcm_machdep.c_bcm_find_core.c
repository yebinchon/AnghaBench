
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct bhnd_core_match {int dummy; } ;
struct bhnd_core_info {int dummy; } ;
struct TYPE_2__ {int obj; } ;
struct bcm_platform {TYPE_1__ erom; } ;
typedef int bhnd_size_t ;
typedef uintptr_t bhnd_addr_t ;


 int BCM_ERR (char*,int ) ;
 int BHND_PORT_DEVICE ;
 int ENOENT ;
 int ERANGE ;
 uintptr_t UINTPTR_MAX ;
 int bhnd_erom_lookup_core_addr (int *,struct bhnd_core_match const*,int ,int ,int ,struct bhnd_core_info*,uintptr_t*,int *) ;

__attribute__((used)) static int
bcm_find_core(struct bcm_platform *bp, const struct bhnd_core_match *descs,
    size_t num_descs, struct bhnd_core_info *info, uintptr_t *addr)
{
 bhnd_addr_t b_addr;
 bhnd_size_t b_size;
 int error;


 for (size_t i = 0; i < num_descs; i++) {
  error = bhnd_erom_lookup_core_addr(&bp->erom.obj, &descs[i],
      BHND_PORT_DEVICE, 0, 0, info, &b_addr, &b_size);


  if (error == 0)
   break;


  if (error != ENOENT)
   return (error);


 }


 if (addr != ((void*)0) && b_addr > UINTPTR_MAX) {
  BCM_ERR("core address %#jx overflows native address width\n",
      (uintmax_t)b_addr);
  return (ERANGE);
 }

 if (addr != ((void*)0))
  *addr = b_addr;

 return (0);
}
