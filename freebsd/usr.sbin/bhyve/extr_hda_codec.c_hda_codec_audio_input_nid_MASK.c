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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct hda_codec_stream {int dummy; } ;
struct hda_codec_softc {struct hda_codec_stream* streams; } ;

/* Variables and functions */
 size_t HDA_CODEC_STREAM_INPUT ; 
 int FUNC0 (struct hda_codec_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC1(struct hda_codec_softc *sc, uint16_t verb,
    uint16_t payload)
{
	struct hda_codec_stream *st = &sc->streams[HDA_CODEC_STREAM_INPUT];
	int res;

	res = FUNC0(st, verb, payload);

	return (res);
}