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
struct hda_softc {int dummy; } ;
struct hda_codec_class {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct hda_softc* FUNC2 (int,int) ; 
 int /*<<< orphan*/  dbg ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (struct hda_softc*,struct hda_codec_class*,char*,char*,int /*<<< orphan*/ *) ; 
 struct hda_codec_class* FUNC5 (char*) ; 
 int FUNC6 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_softc*) ; 

__attribute__((used)) static struct hda_softc *
FUNC8(const char *opts)
{
	struct hda_softc *sc = NULL;
	struct hda_codec_class *codec = NULL;
	char play[64];
	char rec[64];
	int err, p, r;

#if DEBUG_HDA == 1
	dbg = fopen("/tmp/bhyve_hda.log", "w+");
#endif

	FUNC0("opts: %s\n", opts);

	sc = FUNC2(1, sizeof(*sc));
	if (!sc)
		return (NULL);

	FUNC7(sc);

	/*
	 * TODO search all the codecs declared in opts
	 * For now we play with one single codec
	 */
	codec = FUNC5("hda_codec");
	if (codec) {
		p = FUNC6(opts, "play=", play);
		r = FUNC6(opts, "rec=", rec);
		FUNC0("play: %s rec: %s\n", play, rec);
		if (p | r) {
			err = FUNC4(sc, codec, p ?	\
				play : NULL, r ? rec : NULL, NULL);
			FUNC1(!err);
		}
	}

	return (sc);
}