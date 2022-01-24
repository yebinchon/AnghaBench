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
struct g_bde_key {int /*<<< orphan*/  mkey; int /*<<< orphan*/  salt; int /*<<< orphan*/  spare; int /*<<< orphan*/ * lsector; int /*<<< orphan*/  flags; int /*<<< orphan*/  sectorsize; int /*<<< orphan*/  keyoffset; int /*<<< orphan*/  sectorN; int /*<<< orphan*/  sector0; } ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int G_BDE_LOCKSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int NLOCK_FIELDS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

int
FUNC8(u_char *sha2, struct g_bde_key *gl, u_char *ptr)
{
	int shuffle[NLOCK_FIELDS];
	u_char *hash, *p;
	int i;
	MD5_CTX c;

	p = ptr;
	hash = NULL;
	FUNC5(sha2, shuffle);
	for (i = 0; i < NLOCK_FIELDS; i++) {
		switch(shuffle[i]) {
		case 0:
			FUNC7(p, gl->sector0);
			p += 8;
			break;
		case 1:
			FUNC7(p, gl->sectorN);
			p += 8;
			break;
		case 2:
			FUNC7(p, gl->keyoffset);
			p += 8;
			break;
		case 3:
			FUNC6(p, gl->sectorsize);
			p += 4;
			break;
		case 4:
			FUNC6(p, gl->flags);
			p += 4;
			break;
		case 5:
		case 6:
		case 7:
		case 8:
			FUNC7(p, gl->lsector[shuffle[i] - 5]);
			p += 8;
			break;
		case 9:
			FUNC3(gl->spare, p, sizeof gl->spare);
			p += sizeof gl->spare;
			break;
		case 10:
			FUNC3(gl->salt, p, sizeof gl->salt);
			p += sizeof gl->salt;
			break;
		case 11:
			FUNC3(gl->mkey, p, sizeof gl->mkey);
			p += sizeof gl->mkey;
			break;
		case 12:
			FUNC4(p, 16);
			hash = p;
			p += 16;
			break;
		}
	}
	if(ptr + G_BDE_LOCKSIZE != p)
		return(-1);
	if (hash == NULL)
		return(-1);
	FUNC1(&c);
	FUNC2(&c, "0000", 4);	/* Versioning */
	FUNC2(&c, ptr, G_BDE_LOCKSIZE);
	FUNC0(hash, &c);
	return(0);
}