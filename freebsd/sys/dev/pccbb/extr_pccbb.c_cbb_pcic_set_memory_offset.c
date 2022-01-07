
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct resource {int dummy; } ;
struct cbb_softc {int * exca; } ;
typedef int device_t ;


 int ENOENT ;
 int SYS_RES_MEMORY ;
 struct resource* cbb_find_res (struct cbb_softc*,int ,int) ;
 struct cbb_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int exca_mem_set_offset (int *,struct resource*,int ,int *) ;

int
cbb_pcic_set_memory_offset(device_t brdev, device_t child, int rid,
    uint32_t cardaddr, uint32_t *deltap)
{
 struct cbb_softc *sc = device_get_softc(brdev);
 struct resource *res;

 res = cbb_find_res(sc, SYS_RES_MEMORY, rid);
 if (res == ((void*)0)) {
  device_printf(brdev,
      "set_memory_offset: specified rid not found\n");
  return (ENOENT);
 }
 return (exca_mem_set_offset(&sc->exca[0], res, cardaddr, deltap));
}
