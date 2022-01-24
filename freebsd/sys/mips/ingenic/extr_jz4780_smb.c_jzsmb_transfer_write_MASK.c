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
typedef  size_t uint16_t ;
struct timespec {int dummy; } ;
struct jzsmb_softc {int dummy; } ;
struct iic_msg {int len; size_t* buf; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int JZSMB_TIMEOUT ; 
 int /*<<< orphan*/  SMBCON ; 
 size_t SMBCON_STPHLD ; 
 int /*<<< orphan*/  SMBDC ; 
 int /*<<< orphan*/  SMBST ; 
 size_t SMBST_TFNF ; 
 int /*<<< orphan*/  FUNC1 (struct jzsmb_softc*) ; 
 size_t FUNC2 (struct jzsmb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct jzsmb_softc*,int /*<<< orphan*/ ,size_t) ; 
 struct jzsmb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct timespec*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC7 (struct timespec*,struct timespec*,struct timespec*) ; 
 int FUNC8 (struct timespec*) ; 

__attribute__((used)) static int
FUNC9(device_t dev, struct iic_msg *msg, int stop_hold)
{
	struct jzsmb_softc *sc;
	struct timespec start, diff;
	uint16_t con, resid;
	int timeo;

	sc = FUNC4(dev);
	timeo = JZSMB_TIMEOUT * msg->len;

	FUNC1(sc);

	con = FUNC2(sc, SMBCON);
	con |= SMBCON_STPHLD;
	FUNC3(sc, SMBCON, con);

	FUNC6(&start);
	for (resid = msg->len; resid > 0; resid--) {
		for (;;) {
			FUNC6(&diff);
			FUNC7(&diff, &start, &diff);
			if ((FUNC2(sc, SMBST) & SMBST_TFNF) != 0) {
				FUNC3(sc, SMBDC,
				    msg->buf[msg->len - resid]);
				break;
			} else
				FUNC0((1000 * hz) / JZSMB_TIMEOUT);

			if (FUNC8(&diff) >= timeo) {
				FUNC5(dev,
				    "write timeout (status=0x%02x)\n",
				    FUNC2(sc, SMBST));
				return (EIO);
			}
		}
	}

	if (!stop_hold) {
		con = FUNC2(sc, SMBCON);
		con &= ~SMBCON_STPHLD;
		FUNC3(sc, SMBCON, con);
	}

	return (0);
}