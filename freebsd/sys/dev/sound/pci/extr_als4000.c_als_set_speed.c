
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_chinfo {scalar_t__ dir; scalar_t__ dma_active; int speed; struct sc_info* parent; } ;
struct sc_info {struct sc_chinfo pch; struct sc_chinfo rch; } ;


 int ALS_ESP_SAMPLE_RATE ;
 int DEB (int ) ;
 scalar_t__ PCMDIR_PLAY ;
 int als_esp_wr (struct sc_info*,int) ;
 int printf (char*,int,int) ;

__attribute__((used)) static void
als_set_speed(struct sc_chinfo *ch)
{
 struct sc_info *sc = ch->parent;
 struct sc_chinfo *other;

 other = (ch->dir == PCMDIR_PLAY) ? &sc->rch : &sc->pch;
 if (other->dma_active == 0) {
  als_esp_wr(sc, ALS_ESP_SAMPLE_RATE);
  als_esp_wr(sc, ch->speed >> 8);
  als_esp_wr(sc, ch->speed & 0xff);
 } else {
  DEB(printf("speed locked at %d (tried %d)\n",
      other->speed, ch->speed));
 }
}
