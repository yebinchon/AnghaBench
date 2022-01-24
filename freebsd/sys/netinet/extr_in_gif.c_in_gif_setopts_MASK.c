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
typedef  int u_int ;
struct gif_softc {scalar_t__ gif_family; int gif_options; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (struct gif_softc*,int /*<<< orphan*/ ) ; 
 int GIF_IGNORE_SOURCE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  FUNC2 (struct gif_softc*) ; 
 int /*<<< orphan*/  srchash ; 

int
FUNC3(struct gif_softc *sc, u_int options)
{

	/* NOTE: we are protected with gif_ioctl_sx lock */
	FUNC1(sc->gif_family == AF_INET);
	FUNC1(sc->gif_options != options);

	if ((options & GIF_IGNORE_SOURCE) !=
	    (sc->gif_options & GIF_IGNORE_SOURCE)) {
		FUNC0(sc, srchash);
		FUNC0(sc, chain);
		sc->gif_options = options;
		FUNC2(sc);
	}
	return (0);
}