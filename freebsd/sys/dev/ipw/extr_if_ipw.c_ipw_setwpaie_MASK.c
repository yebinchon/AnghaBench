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
typedef  int /*<<< orphan*/  wpaie ;
struct ipw_wpa_ie {int /*<<< orphan*/  ie; int /*<<< orphan*/  len; } ;
struct ipw_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IPW_CMD_SET_WPA_IE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ipw_softc*,int /*<<< orphan*/ ,struct ipw_wpa_ie*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_wpa_ie*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct ipw_softc *sc, const void *ie, int ielen)
{
	struct ipw_wpa_ie wpaie;

	FUNC4(&wpaie, 0, sizeof(wpaie));
	wpaie.len = FUNC1(ielen);
	/* XXX verify length */
	FUNC3(&wpaie.ie, ie, ielen);
	FUNC0(("Setting WPA IE\n"));
	return FUNC2(sc, IPW_CMD_SET_WPA_IE, &wpaie, sizeof(wpaie));
}