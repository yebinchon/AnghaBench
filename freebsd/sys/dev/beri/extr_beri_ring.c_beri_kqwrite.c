
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct knote {int kn_data; struct beri_softc* kn_hook; } ;
struct beri_softc {scalar_t__ data_size; } ;
struct TYPE_5__ {int cdes; scalar_t__ interrupt_level; } ;
typedef TYPE_1__ control_reg_t ;


 int CDES_INT_EN ;
 TYPE_1__ get_control_reg (struct beri_softc*,int) ;
 int get_stock (struct beri_softc*,int,TYPE_1__*) ;
 int set_control_reg (struct beri_softc*,int,TYPE_1__*) ;

__attribute__((used)) static int
beri_kqwrite(struct knote *kn, long hint)
{
 struct beri_softc *sc;
 control_reg_t c;
 int stock;

 sc = kn->kn_hook;

 c = get_control_reg(sc, 1);
 stock = get_stock(sc, 1, &c);
 if (stock) {
  kn->kn_data = stock;
  return (1);
 }

 kn->kn_data = 0;


 c.interrupt_level = sc->data_size - 2;


 c.cdes |= (CDES_INT_EN);
 set_control_reg(sc, 1, &c);

 return (0);
}
