
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct davbus_softc {int (* read_status ) (struct davbus_softc*,int) ;int mutex; int reg; int (* set_outputs ) (struct davbus_softc*,int) ;} ;


 int DAVBUS_CODEC_STATUS ;
 int DAVBUS_PORTCHG ;
 int DAVBUS_SOUND_CTRL ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct davbus_softc*,int) ;
 int stub2 (struct davbus_softc*,int) ;

__attribute__((used)) static void
davbus_cint(void *ptr)
{
 struct davbus_softc *d = ptr;
 u_int reg, status, mask;

 mtx_lock(&d->mutex);

 reg = bus_read_4(d->reg, DAVBUS_SOUND_CTRL);
 if (reg & DAVBUS_PORTCHG) {

  status = bus_read_4(d->reg, DAVBUS_CODEC_STATUS);

  if (d->read_status && d->set_outputs) {

   mask = (*d->read_status)(d, status);
   (*d->set_outputs)(d, mask);
  }


  bus_write_4(d->reg, DAVBUS_SOUND_CTRL, reg);
 }

 mtx_unlock(&d->mutex);
}
