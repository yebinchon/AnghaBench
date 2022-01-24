#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  size_t u_char ;
struct TYPE_2__ {size_t* salt; size_t* mkey; } ;
struct g_bde_softc {TYPE_1__ key; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  keyInstance ;
typedef  size_t MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  G_BDE_KKEYBITS ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (size_t*) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC4 (size_t*,int) ; 
 int /*<<< orphan*/  FUNC5 (size_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct g_bde_softc *sc, keyInstance *ki, int dir, off_t sector)
{
	u_int t;
	MD5_CTX ct;
	u_char buf[16];
	u_char buf2[8];

	/* We have to be architecture neutral */
	FUNC5(buf2, sector);

	FUNC2(&ct);
	FUNC3(&ct, sc->key.salt, 8);
	FUNC3(&ct, buf2, sizeof buf2);
	FUNC3(&ct, sc->key.salt + 8, 8);
	FUNC1(buf, &ct);

	FUNC2(&ct);
	for (t = 0; t < 16; t++) {
		FUNC3(&ct, &sc->key.mkey[buf[t]], 1);
		if (t == 8)
			FUNC3(&ct, buf2, sizeof buf2);
	}
	FUNC4(buf2, sizeof buf2);
	FUNC1(buf, &ct);
	FUNC4(&ct, sizeof ct);
	FUNC0(ki, dir, G_BDE_KKEYBITS, buf);
	FUNC4(buf, sizeof buf);
}