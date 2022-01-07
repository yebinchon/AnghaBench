
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct hda_stream_desc {size_t stream; size_t dir; scalar_t__ run; } ;
struct hda_softc {struct hda_stream_desc* streams; } ;


 int DPRINTF (char*,size_t,size_t,size_t) ;
 int hda_notify_codecs (struct hda_softc*,int ,size_t,size_t) ;

__attribute__((used)) static int
hda_stream_stop(struct hda_softc *sc, uint8_t stream_ind)
{
 struct hda_stream_desc *st = &sc->streams[stream_ind];
 uint8_t strm = st->stream;
 uint8_t dir = st->dir;

 DPRINTF("stream: 0x%x, strm: 0x%x, dir: 0x%x\n", stream_ind, strm, dir);

 st->run = 0;

 hda_notify_codecs(sc, 0, strm, dir);

 return (0);
}
