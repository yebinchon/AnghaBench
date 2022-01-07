
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;
struct sc_chinfo {int dma_active; int format; struct sc_info* parent; } ;
struct playback_command {int dma_stop; } ;


 int als_esp_wr (struct sc_info*,int ) ;
 struct playback_command* als_get_playback_command (int ) ;

__attribute__((used)) static int
als_playback_stop(struct sc_chinfo *ch)
{
 const struct playback_command *p;
 struct sc_info *sc = ch->parent;
 u_int32_t active;

 active = ch->dma_active;
 if (active) {
  p = als_get_playback_command(ch->format);
  als_esp_wr(sc, p->dma_stop);
 }
 ch->dma_active = 0;
 return active;
}
