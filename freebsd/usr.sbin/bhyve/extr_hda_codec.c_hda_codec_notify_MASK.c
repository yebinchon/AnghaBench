#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct hda_audio_ctxt {int dummy; } ;
struct hda_codec_stream {scalar_t__ stream; struct hda_audio_ctxt actx; } ;
struct hda_codec_softc {struct hda_codec_stream* streams; scalar_t__ priv; } ;
struct hda_codec_inst {struct hda_codec_stream* streams; scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int HDA_CODEC_STREAM_INPUT ; 
 int HDA_CODEC_STREAM_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec_softc*) ; 
 int FUNC2 (struct hda_audio_ctxt*) ; 
 int FUNC3 (struct hda_audio_ctxt*) ; 

__attribute__((used)) static int
FUNC4(struct hda_codec_inst *hci, uint8_t run,
    uint8_t stream, uint8_t dir)
{
	struct hda_codec_softc *sc = NULL;
	struct hda_codec_stream *st = NULL;
	struct hda_audio_ctxt *actx = NULL;
	int i;
	int err;

	FUNC1(hci);
	FUNC1(stream);

	sc = (struct hda_codec_softc *)hci->priv;
	FUNC1(sc);

	i = dir ? HDA_CODEC_STREAM_OUTPUT : HDA_CODEC_STREAM_INPUT;
	st = &sc->streams[i];

	FUNC0("run: %d, stream: 0x%x, st->stream: 0x%x dir: %d\n",
	    run, stream, st->stream, dir);

	if (stream != st->stream) {
		FUNC0("Stream not found\n");
		return (0);
	}

	actx = &st->actx;

	if (run)
		err = FUNC2(actx);
	else
		err = FUNC3(actx);

	return (err);
}