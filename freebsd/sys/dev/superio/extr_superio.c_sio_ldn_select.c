
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct siosc {scalar_t__ current_ldn; int ldn_reg; int io_res; int conf_lock; } ;


 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int sio_write (int ,int ,scalar_t__) ;

__attribute__((used)) static void
sio_ldn_select(struct siosc *sc, uint8_t ldn)
{
 mtx_assert(&sc->conf_lock, MA_OWNED);
 if (ldn == sc->current_ldn)
  return;
 sio_write(sc->io_res, sc->ldn_reg, ldn);
 sc->current_ldn = ldn;
}
