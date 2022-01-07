
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec_stream {void* aud; int actx; } ;
struct hda_codec_softc {struct hda_codec_inst* hci; struct hda_codec_stream* streams; int no_nodes; int verb_handlers; int pin_ctrl_default; int conf_default; int conn_list; int subsystem_id; int get_parameters; } ;
struct hda_codec_inst {struct hda_codec_softc* priv; int cad; } ;


 int DPRINTF (char*,...) ;
 int HDA_CODEC_NODES_COUNT ;
 size_t HDA_CODEC_STREAM_INPUT ;
 size_t HDA_CODEC_STREAM_OUTPUT ;
 int HDA_CODEC_SUBSYSTEM_ID ;
 int assert (int) ;
 void* audio_init (char const*,int) ;
 struct hda_codec_softc* calloc (int,int) ;
 int hda_audio_ctxt_init (int *,char*,int ,int ,struct hda_codec_softc*) ;
 int hda_codec_audio_input_do_setup ;
 int hda_codec_audio_input_do_transfer ;
 int hda_codec_audio_output_do_setup ;
 int hda_codec_audio_output_do_transfer ;
 int hda_codec_conf_default ;
 int hda_codec_conn_list ;
 int hda_codec_duplex_parameters ;
 int hda_codec_input_parameters ;
 int hda_codec_output_parameters ;
 int hda_codec_pin_ctrl_default ;
 int hda_codec_verb_handlers ;

__attribute__((used)) static int
hda_codec_init(struct hda_codec_inst *hci, const char *play,
    const char *rec, const char *opts)
{
 struct hda_codec_softc *sc = ((void*)0);
 struct hda_codec_stream *st = ((void*)0);
 int err;

 if (!(play || rec))
  return (-1);

 DPRINTF("cad: 0x%x opts: %s\n", hci->cad, opts);

 sc = calloc(1, sizeof(*sc));
 if (!sc)
  return (-1);

 if (play && rec)
  sc->get_parameters = hda_codec_duplex_parameters;
 else {
  if (play)
   sc->get_parameters = hda_codec_output_parameters;
  else
   sc->get_parameters = hda_codec_input_parameters;
 }
 sc->subsystem_id = HDA_CODEC_SUBSYSTEM_ID;
 sc->no_nodes = HDA_CODEC_NODES_COUNT;
 sc->conn_list = hda_codec_conn_list;
 sc->conf_default = hda_codec_conf_default;
 sc->pin_ctrl_default = hda_codec_pin_ctrl_default;
 sc->verb_handlers = hda_codec_verb_handlers;
 DPRINTF("HDA Codec nodes: %d\n", sc->no_nodes);




 if (play) {
  st = &sc->streams[HDA_CODEC_STREAM_OUTPUT];

  err = hda_audio_ctxt_init(&st->actx, "hda-audio-output",
   hda_codec_audio_output_do_transfer,
   hda_codec_audio_output_do_setup, sc);
  assert(!err);

  st->aud = audio_init(play, 1);
  if (!st->aud) {
   DPRINTF("Fail to init the output audio player\n");
   return (-1);
  }
 }




 if (rec) {
  st = &sc->streams[HDA_CODEC_STREAM_INPUT];

  err = hda_audio_ctxt_init(&st->actx, "hda-audio-input",
   hda_codec_audio_input_do_transfer,
   hda_codec_audio_input_do_setup, sc);
  assert(!err);

  st->aud = audio_init(rec, 0);
  if (!st->aud) {
   DPRINTF("Fail to init the input audio player\n");
   return (-1);
  }
 }

 sc->hci = hci;
 hci->priv = sc;

 return (0);
}
