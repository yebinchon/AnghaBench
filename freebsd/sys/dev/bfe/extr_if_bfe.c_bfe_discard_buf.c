
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfe_softc {struct bfe_desc* bfe_rx_list; struct bfe_rx_data* bfe_rx_ring; } ;
struct bfe_rx_data {int bfe_ctrl; } ;
struct bfe_desc {int bfe_ctrl; } ;


 int htole32 (int ) ;

__attribute__((used)) static void
bfe_discard_buf(struct bfe_softc *sc, int c)
{
 struct bfe_rx_data *r;
 struct bfe_desc *d;

 r = &sc->bfe_rx_ring[c];
 d = &sc->bfe_rx_list[c];
 d->bfe_ctrl = htole32(r->bfe_ctrl);
}
