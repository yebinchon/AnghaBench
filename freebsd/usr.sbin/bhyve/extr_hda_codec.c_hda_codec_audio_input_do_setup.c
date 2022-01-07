
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec_stream {int fmt; struct audio* aud; } ;
struct hda_codec_softc {struct hda_codec_stream* streams; } ;
struct audio_params {int format; int channels; int rate; } ;
struct audio {int dummy; } ;


 int DPRINTF (char*,int ,int ,int ) ;
 size_t HDA_CODEC_STREAM_INPUT ;
 int audio_set_params (struct audio*,struct audio_params*) ;
 int hda_codec_parse_format (int ,struct audio_params*) ;

__attribute__((used)) static int
hda_codec_audio_input_do_setup(void *arg)
{
 struct hda_codec_softc *sc = (struct hda_codec_softc *)arg;
 struct hda_codec_stream *st = ((void*)0);
 struct audio *aud = ((void*)0);
 struct audio_params params;
 int err;

 st = &sc->streams[HDA_CODEC_STREAM_INPUT];
 aud = st->aud;

 err = hda_codec_parse_format(st->fmt, &params);
 if (err)
  return (-1);

 DPRINTF("rate: %d, channels: %d, format: 0x%x\n",
     params.rate, params.channels, params.format);

 return (audio_set_params(aud, &params));
}
