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
typedef  char u_char ;
struct g_bde_softc {int /*<<< orphan*/  sha2; } ;
struct g_bde_key {char* spare; char* salt; char* mkey; void** lsector; void* flags; void* sectorsize; void* keyoffset; void* sectorN; void* sector0; } ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int G_BDE_LOCKSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int NLOCK_FIELDS ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*) ; 
 void* FUNC7 (char*) ; 
 void* FUNC8 (char*) ; 

int
FUNC9(struct g_bde_softc *sc, struct g_bde_key *gl, u_char *ptr)
{
	int shuffle[NLOCK_FIELDS];
	u_char *p;
	u_char hash[16], hash2[16];
	MD5_CTX c;
	int i;

	p = ptr;
	FUNC6(sc->sha2, shuffle);
	for (i = 0; i < NLOCK_FIELDS; i++) {
		switch(shuffle[i]) {
		case 0:
			gl->sector0 = FUNC8(p);
			p += 8;
			break;
		case 1:
			gl->sectorN = FUNC8(p);
			p += 8;
			break;
		case 2:
			gl->keyoffset = FUNC8(p);
			p += 8;
			break;
		case 3:
			gl->sectorsize = FUNC7(p);
			p += 4;
			break;
		case 4:
			gl->flags = FUNC7(p);
			p += 4;
			break;
		case 5:
		case 6:
		case 7:
		case 8:
			gl->lsector[shuffle[i] - 5] = FUNC8(p);
			p += 8;
			break;
		case 9:
			FUNC4(p, gl->spare, sizeof gl->spare);
			p += sizeof gl->spare;
			break;
		case 10:
			FUNC4(p, gl->salt, sizeof gl->salt);
			p += sizeof gl->salt;
			break;
		case 11:
			FUNC4(p, gl->mkey, sizeof gl->mkey);
			p += sizeof gl->mkey;
			break;
		case 12:
			FUNC4(p, hash2, sizeof hash2);
			FUNC5(p, sizeof hash2);
			p += sizeof hash2;
			break;
		}
	}
	if(ptr + G_BDE_LOCKSIZE != p)
		return(-1);
	FUNC1(&c);
	FUNC2(&c, "0000", 4);	/* Versioning */
	FUNC2(&c, ptr, G_BDE_LOCKSIZE);
	FUNC0(hash, &c);
	if (FUNC3(hash, hash2, sizeof hash2))
		return (1);
	return (0);
}