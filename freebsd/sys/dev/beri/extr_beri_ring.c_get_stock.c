
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct beri_softc {int data_size; } ;
struct TYPE_3__ {int in; int out; } ;
typedef TYPE_1__ control_reg_t ;



__attribute__((used)) static int
get_stock(struct beri_softc *sc, int dir, control_reg_t *c)
{
 uint32_t fill;

 fill = (c->in - c->out + sc->data_size) % sc->data_size;

 if (dir)
  return (sc->data_size - fill - 1);
 else
  return (fill);
}
