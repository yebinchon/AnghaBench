
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct siosc {scalar_t__ ldn_reg; scalar_t__ current_ldn; int io_res; int conf_lock; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int printf (char*,scalar_t__) ;
 int sio_ldn_select (struct siosc*,scalar_t__) ;
 int sio_write (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
sio_ldn_write(struct siosc *sc, uint8_t ldn, uint8_t reg, uint8_t val)
{
 mtx_assert(&sc->conf_lock, MA_OWNED);
 if (reg <= sc->ldn_reg) {
  printf("ignored attempt to write special register 0x%x\n", reg);
  return;
 }
 sio_ldn_select(sc, ldn);
 KASSERT(sc->current_ldn == ldn, ("sio_ldn_select failed"));
 sio_write(sc->io_res, reg, val);
}
