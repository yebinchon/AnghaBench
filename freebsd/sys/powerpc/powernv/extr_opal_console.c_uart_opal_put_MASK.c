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
typedef  int uint64_t ;
typedef  int uint16_t ;
struct uart_opal_softc {scalar_t__ protocol; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  vtermid; int /*<<< orphan*/  outseqno; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_CONSOLE_WRITE ; 
 scalar_t__ OPAL_RAW ; 
 int OPAL_SUCCESS ; 
 char VS_DATA_PACKET_HEADER ; 
 int /*<<< orphan*/  FUNC0 (char*,void*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct uart_opal_softc *sc, void *buffer, size_t bufsize)
{
	uint16_t seqno;
	uint64_t len;
	char	cbuf[16];
	int	err;
	uint64_t olen = (uint64_t)&len;
	uint64_t obuf = (uint64_t)cbuf;

	if (sc->protocol == OPAL_RAW) {
		obuf = (uint64_t)buffer;
		len = bufsize;

		FUNC3(&obuf, &olen);
		err = FUNC1(OPAL_CONSOLE_WRITE, sc->vtermid, olen, obuf);
		FUNC4(&len);
	} else {
		FUNC2(&sc->sc_mtx);
		if (bufsize > 12)
			bufsize = 12;
		seqno = sc->outseqno++;
		cbuf[0] = VS_DATA_PACKET_HEADER;
		cbuf[1] = 4 + bufsize; /* total length */
		cbuf[2] = (seqno >> 8) & 0xff;
		cbuf[3] = seqno & 0xff;
		FUNC0(&cbuf[4], buffer, bufsize);
		len = 4 + bufsize;

		FUNC3(&obuf, &olen);
		err = FUNC1(OPAL_CONSOLE_WRITE, sc->vtermid, olen, obuf);
		FUNC4(&len);

		FUNC5(&sc->sc_mtx);

		len -= 4;
	}

#if 0
	if (err != OPAL_SUCCESS)
		len = 0;
#endif

	return (len);
}