
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct siosc {scalar_t__ enable_reg; scalar_t__ current_ldn; int io_res; int conf_lock; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int sio_ldn_select (struct siosc*,scalar_t__) ;
 scalar_t__ sio_read (int ,scalar_t__) ;

__attribute__((used)) static uint8_t
sio_ldn_read(struct siosc *sc, uint8_t ldn, uint8_t reg)
{
 mtx_assert(&sc->conf_lock, MA_OWNED);
 if (reg >= sc->enable_reg) {
  sio_ldn_select(sc, ldn);
  KASSERT(sc->current_ldn == ldn, ("sio_ldn_select failed"));
 }
 return (sio_read(sc->io_res, reg));
}
