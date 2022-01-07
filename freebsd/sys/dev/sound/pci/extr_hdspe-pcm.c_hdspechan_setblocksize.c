
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sc_pcminfo {int dev; struct sc_info* sc; } ;
struct sc_info {int period; int lock; int ctrl_register; } ;
struct sc_chinfo {int buffer; struct sc_pcminfo* parent; } ;
struct hdspe_latency {int period; int n; } ;
typedef int kobj_t ;


 int HDSPE_CHANBUF_SIZE ;
 int HDSPE_CONTROL_REG ;
 int HDSPE_LAT_BYTES_MAX ;
 int HDSPE_LAT_BYTES_MIN ;
 int HDSPE_LAT_MASK ;
 int device_printf (int ,char*,int) ;
 int hdspe_encode_latency (int ) ;
 int hdspe_running (struct sc_info*) ;
 int hdspe_write_4 (struct sc_info*,int ,int ) ;
 struct hdspe_latency* latency_map ;
 int snd_mtxlock (int ) ;
 int snd_mtxunlock (int ) ;
 int sndbuf_getblksz (int ) ;
 int sndbuf_resize (int ,int,int) ;

__attribute__((used)) static uint32_t
hdspechan_setblocksize(kobj_t obj, void *data, uint32_t blocksize)
{
 struct hdspe_latency *hl;
 struct sc_pcminfo *scp;
 struct sc_chinfo *ch;
 struct sc_info *sc;
 int threshold;
 int i;

 ch = data;
 scp = ch->parent;
 sc = scp->sc;
 hl = ((void*)0);





 if (hdspe_running(sc) == 1)
  goto end;

 if (blocksize > HDSPE_LAT_BYTES_MAX)
  blocksize = HDSPE_LAT_BYTES_MAX;
 else if (blocksize < HDSPE_LAT_BYTES_MIN)
  blocksize = HDSPE_LAT_BYTES_MIN;

 blocksize /= 4 ;


 for (i = 0; latency_map[i].period != 0; i++) {
  if (latency_map[i].period == blocksize) {
   hl = &latency_map[i];
  }
 }


 if (hl == ((void*)0)) {
  for (i = 0; latency_map[i].period != 0; i++) {
   hl = &latency_map[i];
   threshold = hl->period + ((latency_map[i + 1].period != 0) ?
       ((latency_map[i + 1].period - hl->period) >> 1) : 0);
   if (blocksize < threshold)
    break;
  }
 }

 snd_mtxlock(sc->lock);
 sc->ctrl_register &= ~HDSPE_LAT_MASK;
 sc->ctrl_register |= hdspe_encode_latency(hl->n);
 hdspe_write_4(sc, HDSPE_CONTROL_REG, sc->ctrl_register);
 sc->period = hl->period;
 snd_mtxunlock(sc->lock);





 sndbuf_resize(ch->buffer, (HDSPE_CHANBUF_SIZE * 2) / (sc->period * 4),
     (sc->period * 4));
end:

 return (sndbuf_getblksz(ch->buffer));
}
