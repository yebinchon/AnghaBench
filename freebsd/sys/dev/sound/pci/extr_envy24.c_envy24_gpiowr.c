
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dev; } ;


 int ENVY24_CCI_GPIODAT ;
 int device_printf (int ,char*,int) ;
 int envy24_wrci (struct sc_info*,int ,int) ;

__attribute__((used)) static void
envy24_gpiowr(struct sc_info *sc, u_int32_t data)
{




 envy24_wrci(sc, ENVY24_CCI_GPIODAT, data);
 return;
}
