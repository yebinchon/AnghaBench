
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dev; scalar_t__ ac97_base; } ;
typedef int kobj_t ;


 int DELAY (int) ;
 int device_printf (int ,char*) ;
 int nm_rd (struct sc_info*,scalar_t__,int) ;
 int nm_waitcd (struct sc_info*) ;

__attribute__((used)) static int
nm_rdcd(kobj_t obj, void *devinfo, int regno)
{
 struct sc_info *sc = (struct sc_info *)devinfo;
 u_int32_t x;

 if (!nm_waitcd(sc)) {
  x = nm_rd(sc, sc->ac97_base + regno, 2);
  DELAY(1000);
  return x;
 } else {
  device_printf(sc->dev, "ac97 codec not ready\n");
  return -1;
 }
}
