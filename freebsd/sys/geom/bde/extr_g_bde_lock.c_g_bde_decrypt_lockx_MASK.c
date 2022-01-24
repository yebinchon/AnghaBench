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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ u_int ;
typedef  scalar_t__ u_char ;
struct g_bde_key {scalar_t__* mkey; scalar_t__* lsector; } ;
struct g_bde_softc {scalar_t__ sha2; int /*<<< orphan*/  consumer; struct g_bde_key key; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  keyInstance ;
typedef  int /*<<< orphan*/  cipherInstance ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  DIR_DECRYPT ; 
 int EDOOFUS ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOTDIR ; 
 int ESRCH ; 
 scalar_t__ G_BDE_LOCKSIZE ; 
 int G_BDE_MAXKEYS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__) ; 
 int FUNC4 (struct g_bde_softc*,struct g_bde_key*,scalar_t__*) ; 
 int FUNC5 (scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 scalar_t__* FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int*) ; 

__attribute__((used)) static int
FUNC8(struct g_bde_softc *sc, u_char *meta, off_t mediasize, u_int sectorsize, u_int *nkey)
{
	u_char *buf, *q;
	struct g_bde_key *gl;
	uint64_t off, q1;
	int error, m, i;
	keyInstance ki;
	cipherInstance ci;

	gl = &sc->key;

	/* Try to decrypt the metadata */
	error = FUNC5(sc->sha2, meta, &off);
	if (error)
		return (error);

	/* If it points into thin blue air, forget it */
	if (off + G_BDE_LOCKSIZE > (uint64_t)mediasize) {
		off = 0;
		return (EINVAL);
	}

	/* The lock data may span two physical sectors. */

	m = 1;
	if (off % sectorsize > sectorsize - G_BDE_LOCKSIZE)
		m++;

	/* Read the suspected sector(s) */
	buf = FUNC7(sc->consumer,
		off - (off % sectorsize),
		m * sectorsize, &error);
	if (buf == NULL) {
		off = 0;
		return(error);
	}

	/* Find the byte-offset of the stored byte sequence */
	q = buf + off % sectorsize;

	/* If it is all zero, somebody nuked our lock sector */
	q1 = 0;
	for (i = 0; i < G_BDE_LOCKSIZE; i++)
		q1 += q[i];
	if (q1 == 0) {
		off = 0;
		FUNC6(buf);
		return (ESRCH);
	}

	/* Decrypt the byte-sequence in place */
	FUNC1(&ci);
	FUNC2(&ki, DIR_DECRYPT, 256, sc->sha2 + 16);
	FUNC0(&ci, &ki, q, q, G_BDE_LOCKSIZE);

	/* Decode the byte-sequence */
	i = FUNC4(sc, gl, q);
	q = NULL;
	if (i < 0) {
		off = 0;
		return (EDOOFUS);	/* Programming error */
	} else if (i > 0) {
		off = 0;
		return (ENOTDIR);	/* Hash didn't match */
	}

	FUNC3(buf, sectorsize * m);
	FUNC6(buf);

	/* If the masterkey is all zeros, user destroyed it */
	q1 = 0;
	for (i = 0; i < (int)sizeof(gl->mkey); i++)
		q1 += gl->mkey[i];
	if (q1 == 0)
		return (ENOENT);

	/* If we have an unsorted lock-sequence, refuse */
	for (i = 0; i < G_BDE_MAXKEYS - 1; i++)
		if (gl->lsector[i] >= gl->lsector[i + 1])
			return (EINVAL);

	/* Finally, find out which key was used by matching the byte offset */
	for (i = 0; i < G_BDE_MAXKEYS; i++)
		if (nkey != NULL && off == gl->lsector[i])
			*nkey = i;
	off = 0;
	return (0);
}