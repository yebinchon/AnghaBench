
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;


 int ENVY24_CCI_GPIODAT ;
 int envy24_rdci (struct sc_info*,int ) ;

__attribute__((used)) static u_int32_t
envy24_gpiord(struct sc_info *sc)
{
 return envy24_rdci(sc, ENVY24_CCI_GPIODAT);
}
