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
struct hda_codec_stream {int /*<<< orphan*/  fmt; struct audio* aud; } ;
struct hda_codec_softc {struct hda_codec_stream* streams; } ;
struct audio_params {int /*<<< orphan*/  format; int /*<<< orphan*/  channels; int /*<<< orphan*/  rate; } ;
struct audio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t HDA_CODEC_STREAM_INPUT ; 
 int FUNC1 (struct audio*,struct audio_params*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct audio_params*) ; 

__attribute__((used)) static int
FUNC3(void *arg)
{
	struct hda_codec_softc *sc = (struct hda_codec_softc *)arg;
	struct hda_codec_stream *st = NULL;
	struct audio *aud = NULL;
	struct audio_params params;
	int err;

	st = &sc->streams[HDA_CODEC_STREAM_INPUT];
	aud = st->aud;

	err = FUNC2(st->fmt, &params);
	if (err)
		return (-1);

	FUNC0("rate: %d, channels: %d, format: 0x%x\n",
	    params.rate, params.channels, params.format);

	return (FUNC1(aud, &params));
}