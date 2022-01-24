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
struct snd_mixer {int dummy; } ;
struct davbus_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  reg; int /*<<< orphan*/  (* set_outputs ) (struct davbus_softc*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* read_status ) (struct davbus_softc*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DAVBUS_CODEC_STATUS ; 
 int /*<<< orphan*/  SCREAMER_CODEC_ADDR0 ; 
 int /*<<< orphan*/  SCREAMER_CODEC_ADDR2 ; 
 int /*<<< orphan*/  SCREAMER_CODEC_ADDR4 ; 
 int /*<<< orphan*/  SCREAMER_CODEC_ADDR5 ; 
 int /*<<< orphan*/  SCREAMER_CODEC_ADDR6 ; 
 int SCREAMER_DEFAULT_CD_GAIN ; 
 int SCREAMER_INPUT_CD ; 
 int /*<<< orphan*/  SOUND_MASK_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct davbus_softc* FUNC1 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mixer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct davbus_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct davbus_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct davbus_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct snd_mixer *m)
{
	struct davbus_softc *d;

	d = FUNC1(m);

	d->read_status = screamer_read_status;
	d->set_outputs = screamer_set_outputs;

	FUNC3(&d->mutex);

	FUNC7(d, SCREAMER_CODEC_ADDR0, SCREAMER_INPUT_CD | 
	    SCREAMER_DEFAULT_CD_GAIN);

	FUNC6(d, FUNC5(d, 
	    FUNC0(d->reg, DAVBUS_CODEC_STATUS)));

	FUNC7(d, SCREAMER_CODEC_ADDR2, 0);
	FUNC7(d, SCREAMER_CODEC_ADDR4, 0);
	FUNC7(d, SCREAMER_CODEC_ADDR5, 0);
	FUNC7(d, SCREAMER_CODEC_ADDR6, 0);

	FUNC4(&d->mutex);

	FUNC2(m, SOUND_MASK_VOLUME);

	return (0);
}