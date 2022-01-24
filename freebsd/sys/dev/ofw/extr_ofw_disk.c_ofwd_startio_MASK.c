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
typedef  scalar_t__ u_int ;
struct ofwd_softc {int /*<<< orphan*/  ofwd_instance; } ;
struct bio {int bio_cmd; scalar_t__ bio_length; scalar_t__ bio_resid; scalar_t__ bio_data; int /*<<< orphan*/  bio_offset; } ;

/* Variables and functions */
#define  BIO_READ 129 
#define  BIO_WRITE 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(struct ofwd_softc *sc, struct bio *bp)
{
	u_int r;

	r = FUNC1(sc->ofwd_instance, bp->bio_offset);

	switch (bp->bio_cmd) {
	case BIO_READ:
		r = FUNC0(sc->ofwd_instance, (void *)bp->bio_data,
		   bp->bio_length);
		break;
	case BIO_WRITE:
		r = FUNC2(sc->ofwd_instance, (void *)bp->bio_data,
		   bp->bio_length);
		break;
	}
	if (r != bp->bio_length)
		FUNC3("ofwd: incorrect i/o count");

	bp->bio_resid = 0;
	return (0);
}