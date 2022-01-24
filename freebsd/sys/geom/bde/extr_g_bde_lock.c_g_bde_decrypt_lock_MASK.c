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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct g_bde_softc {int /*<<< orphan*/  consumer; int /*<<< orphan*/  sha2; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int G_BDE_MAXKEYS ; 
 int /*<<< orphan*/  SHA512_DIGEST_LENGTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct g_bde_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

int
FUNC6(struct g_bde_softc *sc, u_char *keymat, u_char *meta, off_t mediasize, u_int sectorsize, u_int *nkey)
{
	u_char *buf, buf1[16];
	int error, e, i;

	/* set up the key-material */
	FUNC1(keymat, sc->sha2, SHA512_DIGEST_LENGTH);

	/* If passed-in metadata is non-zero, use it */
	FUNC2(buf1, sizeof buf1);
	if (meta != NULL && FUNC0(buf1, meta, sizeof buf1))
		return (FUNC3(sc, meta, mediasize,
		    sectorsize, nkey));

	/* Read sector zero */
	buf = FUNC5(sc->consumer, 0, sectorsize, &error);
	if (buf == NULL)
		return(error);

	/* Try each index in turn, save indicative errors for final result */
	error = EINVAL;
	for (i = 0; i < G_BDE_MAXKEYS; i++) {
		e = FUNC3(sc, buf + i * 16, mediasize,
		    sectorsize, nkey);
		/* Success or destroyed master key terminates */
		if (e == 0 || e == ENOENT) {
			error = e;
			break;
		}
		if (e != 0 && error == EINVAL)
			error = e;
	}
	FUNC4(buf);
	return (error);
}