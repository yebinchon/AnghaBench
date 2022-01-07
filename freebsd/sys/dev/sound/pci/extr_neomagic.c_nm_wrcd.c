
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dev; scalar_t__ ac97_base; } ;
typedef int kobj_t ;


 int DELAY (int) ;
 int device_printf (int ,char*) ;
 int nm_waitcd (struct sc_info*) ;
 int nm_wr (struct sc_info*,scalar_t__,int ,int) ;

__attribute__((used)) static int
nm_wrcd(kobj_t obj, void *devinfo, int regno, u_int32_t data)
{
 struct sc_info *sc = (struct sc_info *)devinfo;
 int cnt = 3;

 if (!nm_waitcd(sc)) {
  while (cnt-- > 0) {
   nm_wr(sc, sc->ac97_base + regno, data, 2);
   if (!nm_waitcd(sc)) {
    DELAY(1000);
    return 0;
   }
  }
 }
 device_printf(sc->dev, "ac97 codec not ready\n");
 return -1;
}
