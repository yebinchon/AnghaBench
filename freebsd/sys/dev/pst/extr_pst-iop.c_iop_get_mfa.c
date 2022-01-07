
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct iop_softc {TYPE_1__* reg; } ;
struct TYPE_2__ {int iqueue; } ;


 int DELAY (int) ;
 int printf (char*) ;

u_int32_t
iop_get_mfa(struct iop_softc *sc)
{
    u_int32_t mfa;
    int timeout = 10000;

    while ((mfa = sc->reg->iqueue) == 0xffffffff && timeout) {
 DELAY(1000);
 timeout--;
    }
    if (!timeout)
 printf("pstiop: no free mfa\n");
    return mfa;
}
