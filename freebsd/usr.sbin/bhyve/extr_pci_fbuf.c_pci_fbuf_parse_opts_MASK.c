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
struct TYPE_2__ {int width; int height; } ;
struct pci_fbuf_softc {int rfb_wait; int vga_enabled; int vga_full; void* rfb_password; TYPE_1__ memregs; void* rfb_host; void* rfb_port; } ;

/* Variables and functions */
 int COLS_MAX ; 
 int /*<<< orphan*/  DEBUG_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ROWS_MAX ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 void* FUNC6 (char*) ; 
 char* FUNC7 (char**,char*) ; 

__attribute__((used)) static int
FUNC8(struct pci_fbuf_softc *sc, char *opts)
{
	char	*uopts, *uoptsbak, *xopts, *config;
	char	*tmpstr;
	int	ret;

	ret = 0;
	uoptsbak = uopts = FUNC6(opts);
	while ((xopts = FUNC7(&uopts, ",")) != NULL) {
		if (FUNC5(xopts, "wait") == 0) {
			sc->rfb_wait = 1;
			continue;
		}

		if ((config = FUNC4(xopts, '=')) == NULL) {
			FUNC3(xopts);
			ret = -1;
			goto done;
		}

		*config++ = '\0';

		FUNC0(DEBUG_VERBOSE, ("pci_fbuf option %s = %s\r\n",
		   xopts, config));

		if (!FUNC5(xopts, "tcp") || !FUNC5(xopts, "rfb")) {
			/*
			 * IPv4 -- host-ip:port
			 * IPv6 -- [host-ip%zone]:port
			 * XXX for now port is mandatory.
			 */
			tmpstr = FUNC7(&config, "]");
			if (config) {
				if (tmpstr[0] == '[')
					tmpstr++;
				sc->rfb_host = FUNC6(tmpstr);
				if (config[0] == ':')
					config++;
				else {
					FUNC3(xopts);
					ret = -1;
					goto done;
				}
				sc->rfb_port = FUNC1(config);
			} else {
				config = tmpstr;
				tmpstr = FUNC7(&config, ":");
				if (!config)
					sc->rfb_port = FUNC1(tmpstr);
				else {
					sc->rfb_port = FUNC1(config);
					sc->rfb_host = FUNC6(tmpstr);
				}
			}
	        } else if (!FUNC5(xopts, "vga")) {
			if (!FUNC5(config, "off")) {
				sc->vga_enabled = 0;
			} else if (!FUNC5(config, "io")) {
				sc->vga_enabled = 1;
				sc->vga_full = 0;
			} else if (!FUNC5(config, "on")) {
				sc->vga_enabled = 1;
				sc->vga_full = 1;
			} else {
				FUNC3(xopts);
				ret = -1;
				goto done;
			}
	        } else if (!FUNC5(xopts, "w")) {
		        sc->memregs.width = FUNC1(config);
			if (sc->memregs.width > COLS_MAX) {
				FUNC3(xopts);
				ret = -1;
				goto done;
			} else if (sc->memregs.width == 0)
				sc->memregs.width = 1920;
		} else if (!FUNC5(xopts, "h")) {
			sc->memregs.height = FUNC1(config);
			if (sc->memregs.height > ROWS_MAX) {
				FUNC3(xopts);
				ret = -1;
				goto done;
			} else if (sc->memregs.height == 0)
				sc->memregs.height = 1080;
		} else if (!FUNC5(xopts, "password")) {
			sc->rfb_password = FUNC6(config);
		} else {
			FUNC3(xopts);
			ret = -1;
			goto done;
		}
	}

done:
	FUNC2(uoptsbak);
	return (ret);
}