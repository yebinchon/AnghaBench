
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ txd_cur; scalar_t__ txd_ack; } ;
typedef TYPE_1__ ae_softc_t ;


 unsigned int AE_TXD_BUFSIZE_DEFAULT ;

__attribute__((used)) static unsigned int
ae_tx_avail_size(ae_softc_t *sc)
{
 unsigned int avail;

 if (sc->txd_cur >= sc->txd_ack)
  avail = AE_TXD_BUFSIZE_DEFAULT - (sc->txd_cur - sc->txd_ack);
 else
  avail = sc->txd_ack - sc->txd_cur;

 return (avail);
}
