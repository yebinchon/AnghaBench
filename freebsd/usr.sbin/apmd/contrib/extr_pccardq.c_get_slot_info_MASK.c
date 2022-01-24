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

/* Variables and functions */
 int FUNC0 (char*) ; 
 int FUNC1 (int,char*,int) ; 
 int FUNC2 (char*,int,char*,int) ; 
 int FUNC3 (char*,char*,int*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (char**,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int,char*,int) ; 

int
FUNC10(int so, int slot, char **manuf, char **version, char
	      **device, int *state)
{
    int             rc = -1;
    int             rv;
    static char     buf[1024];
    int             slen;
    char           *s;
    char           *sl;

    char           *_manuf;
    char           *_version;
    char           *_device;

    if ((slen = FUNC2(buf, sizeof buf, "N%d", slot)) < 0) {
	FUNC8(0, "write");
	goto err;
    }

    if ((rv = FUNC9(so, buf, slen)) < 0) {
	FUNC7("write");
	goto err;
    } else if (rv != slen) {
	FUNC8(0, "write");
	goto err;
    }

    if ((rv = FUNC1(so, buf, sizeof buf)) < 0) {
	FUNC7("read");
	goto err;
    }

    s = buf;
    if ((sl = FUNC6(&s, "~")) == NULL)
	goto parse_err;
    if (FUNC0(sl) != slot)
	goto parse_err;
    if ((_manuf = FUNC6(&s, "~")) == NULL)
	goto parse_err;
    if ((_version = FUNC6(&s, "~")) == NULL)
	goto parse_err;
    if ((_device = FUNC6(&s, "~")) == NULL)
	goto parse_err;
    if (FUNC3(s, "%1d", state) != 1)
	goto parse_err;
    if (s != NULL && FUNC4(s, '~') != NULL)
	goto parse_err;

    if ((*manuf = FUNC5(_manuf)) == NULL) {
	FUNC7("strdup");
	goto err;
    }
    if ((*version = FUNC5(_version)) == NULL) {
	FUNC7("strdup");
	goto err;
    }
    if ((*device = FUNC5(_device)) == NULL) {
	FUNC7("strdup");
	goto err;
    }
    if (*manuf == NULL || *version == NULL || *device == NULL) {
	FUNC7("strdup");
	goto err;
    }

    rc = 0;
  err:
    return rc;
  parse_err:
    FUNC8(0, "Invalid response: %*s", rv, buf);
    return rc;
}