
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct resource {int dummy; } ;
struct cbb_softc {int * exca; } ;
typedef int device_t ;


 int EINVAL ;
 int ENOENT ;
 int SYS_RES_MEMORY ;
 struct resource* cbb_find_res (struct cbb_softc*,int,int) ;
 struct cbb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int exca_mem_set_flags (int *,struct resource*,int ) ;

int
cbb_pcic_set_res_flags(device_t brdev, device_t child, int type, int rid,
    u_long flags)
{
 struct cbb_softc *sc = device_get_softc(brdev);
 struct resource *res;

 if (type != SYS_RES_MEMORY)
  return (EINVAL);
 res = cbb_find_res(sc, type, rid);
 if (res == ((void*)0)) {
  device_printf(brdev,
      "set_res_flags: specified rid not found\n");
  return (ENOENT);
 }
 return (exca_mem_set_flags(&sc->exca[0], res, flags));
}
