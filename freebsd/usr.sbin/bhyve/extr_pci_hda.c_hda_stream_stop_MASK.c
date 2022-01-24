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
typedef  size_t uint8_t ;
struct hda_stream_desc {size_t stream; size_t dir; scalar_t__ run; } ;
struct hda_softc {struct hda_stream_desc* streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_softc*,int /*<<< orphan*/ ,size_t,size_t) ; 

__attribute__((used)) static int
FUNC2(struct hda_softc *sc, uint8_t stream_ind)
{
	struct hda_stream_desc *st = &sc->streams[stream_ind];
	uint8_t strm = st->stream;
	uint8_t dir = st->dir;

	FUNC0("stream: 0x%x, strm: 0x%x, dir: 0x%x\n", stream_ind, strm, dir);

	st->run = 0;

	FUNC1(sc, 0, strm, dir);

	return (0);
}