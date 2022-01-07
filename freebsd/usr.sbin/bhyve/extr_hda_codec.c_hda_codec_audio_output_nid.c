
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct hda_codec_stream {int dummy; } ;
struct hda_codec_softc {struct hda_codec_stream* streams; } ;


 size_t HDA_CODEC_STREAM_OUTPUT ;
 int hda_codec_audio_inout_nid (struct hda_codec_stream*,int ,int ) ;

__attribute__((used)) static uint32_t
hda_codec_audio_output_nid(struct hda_codec_softc *sc, uint16_t verb,
    uint16_t payload)
{
 struct hda_codec_stream *st = &sc->streams[HDA_CODEC_STREAM_OUTPUT];
 int res;

 res = hda_codec_audio_inout_nid(st, verb, payload);

 return (res);
}
