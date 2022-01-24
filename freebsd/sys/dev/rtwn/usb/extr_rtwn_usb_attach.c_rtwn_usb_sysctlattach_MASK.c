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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct rtwn_usb_softc {int uc_rx_buf_size; } ;
struct rtwn_softc {int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  str ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RDTUN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int RTWN_USB_RXBUFSZ_DEF ; 
 int RTWN_USB_RXBUFSZ_MAX ; 
 int RTWN_USB_RXBUFSZ_MIN ; 
 struct rtwn_usb_softc* FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int,char*,int,int) ; 

__attribute__((used)) static void
FUNC7(struct rtwn_softc *sc)
{
	struct rtwn_usb_softc *uc = FUNC1(sc);
	struct sysctl_ctx_list *ctx = FUNC4(sc->sc_dev);
	struct sysctl_oid *tree = FUNC5(sc->sc_dev);
	char str[64];
	int ret;

	ret = FUNC6(str, sizeof(str),
	    "Rx buffer size, 512-byte units [%d...%d]",
	    RTWN_USB_RXBUFSZ_MIN, RTWN_USB_RXBUFSZ_MAX);
	FUNC0(ret > 0, ("ret (%d) <= 0!\n", ret));
	(void) ret;

	uc->uc_rx_buf_size = RTWN_USB_RXBUFSZ_DEF;
	FUNC2(ctx, FUNC3(tree), OID_AUTO,
	    "rx_buf_size", CTLFLAG_RDTUN, &uc->uc_rx_buf_size,
	    uc->uc_rx_buf_size, str);
	if (uc->uc_rx_buf_size < RTWN_USB_RXBUFSZ_MIN)
		uc->uc_rx_buf_size = RTWN_USB_RXBUFSZ_MIN;
	if (uc->uc_rx_buf_size > RTWN_USB_RXBUFSZ_MAX)
		uc->uc_rx_buf_size = RTWN_USB_RXBUFSZ_MAX;
}