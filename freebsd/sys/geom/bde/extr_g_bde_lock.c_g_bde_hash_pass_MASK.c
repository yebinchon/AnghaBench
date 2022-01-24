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
struct g_bde_softc {int /*<<< orphan*/  sha2; } ;
typedef  int /*<<< orphan*/  SHA512_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct g_bde_softc *sc, const void *input, u_int len)
{
	SHA512_CTX cx;

	FUNC1(&cx);
	FUNC2(&cx, input, len);
	FUNC0(sc->sha2, &cx);
}