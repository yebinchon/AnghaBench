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
struct hda_ops {int (* signal ) (struct hda_ops*) ;int /*<<< orphan*/  cad; struct hda_codec_stream* streams; scalar_t__ priv; struct hda_ops* hops; } ;
struct hda_codec_stream {void* right_mute; void* left_mute; void* right_gain; void* left_gain; } ;
struct hda_codec_softc {int (* signal ) (struct hda_ops*) ;int /*<<< orphan*/  cad; struct hda_codec_stream* streams; scalar_t__ priv; struct hda_codec_softc* hops; } ;
struct hda_codec_inst {int (* signal ) (struct hda_ops*) ;int /*<<< orphan*/  cad; struct hda_codec_stream* streams; scalar_t__ priv; struct hda_codec_inst* hops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 void* HDA_CODEC_AMP_NUMSTEPS ; 
 void* HDA_CODEC_SET_AMP_GAIN_MUTE_MUTE ; 
 int HDA_CODEC_STREAMS_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct hda_ops*) ; 
 int FUNC2 (struct hda_ops*) ; 

__attribute__((used)) static int
FUNC3(struct hda_codec_inst *hci)
{
	struct hda_ops *hops = NULL;
	struct hda_codec_softc *sc = NULL;
	struct hda_codec_stream *st = NULL;
	int i;

	FUNC1(hci);

	hops = hci->hops;
	FUNC1(hops);

	sc = (struct hda_codec_softc *)hci->priv;
	FUNC1(sc);

	for (i = 0; i < HDA_CODEC_STREAMS_COUNT; i++) {
		st = &sc->streams[i];
		st->left_gain = HDA_CODEC_AMP_NUMSTEPS;
		st->right_gain = HDA_CODEC_AMP_NUMSTEPS;
		st->left_mute = HDA_CODEC_SET_AMP_GAIN_MUTE_MUTE;
		st->right_mute = HDA_CODEC_SET_AMP_GAIN_MUTE_MUTE;
	}

	FUNC0("cad: 0x%x\n", hci->cad);

	if (!hops->signal) {
		FUNC0("The controller ops does not implement \
			 the signal function\n");
		return (-1);
	}

	return (hops->signal(hci));
}