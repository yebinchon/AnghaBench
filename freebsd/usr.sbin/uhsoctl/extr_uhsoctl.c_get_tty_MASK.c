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
struct ctx {char* ifnam; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 char* SYSCTL_LOCATION ; 
 char* SYSCTL_NAME_TTY ; 
 char* SYSCTL_NETIF ; 
 char* SYSCTL_TEST ; 
 char* TTY_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ ,int) ; 
 char** port_type_list ; 
 char** FUNC3 (char**,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int FUNC6 (char const*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 
 int FUNC10 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char **
FUNC11(struct ctx *ctx)
{
	char buf[64], data[128];
	int error, i, usbport, usbport0, list_size = 0;
	char **list = NULL;
	size_t len;
	const char **p, *q;
	
	/*
	 * Look for the network interface first
	 */
	for (i = 0; ; i++) {
		/* Check if we still have uhso nodes to check */
		FUNC4(buf, 64, SYSCTL_TEST, i);
		len = 127;
		error = FUNC10(buf, data, &len, NULL, 0);
		data[len] = '\0';
#ifdef DEBUG
		fprintf(stderr, "sysctl %s returned(%d): %s\n",
		    buf, error, error == 0 ? data : "FAILED");
#endif
		if (error < 0 || FUNC7(data, "uhso") != 0)
			return NULL;

		/* Check if this node contains the network interface we want */
		FUNC4(buf, 64, SYSCTL_NETIF, i);
		len = 127;
		error = FUNC10(buf, data, &len, NULL, 0);
		data[len] = '\0';
#ifdef DEBUG
		fprintf(stderr, "sysctl %s returned(%d): %s\n",
		    buf, error, error == 0 ? data : "FAILED");
#endif
		if (error == 0 && FUNC7(data, ctx->ifnam) == 0)
			break;
	}

	/* Figure out the USB port location */
	FUNC4(buf, 64, SYSCTL_LOCATION, i);
	len = 127;
	error = FUNC10(buf, data, &len, NULL, 0);
	data[len] = '\0';
#ifdef DEBUG
	fprintf(stderr, "sysctl %s returned(%d): %s\n",
	    buf, error, error == 0 ? data : "FAILED");
#endif
	if (error != 0)
		return (NULL);

	q = FUNC9(data, "port=");
	if (q != NULL) {
		error = FUNC6(q, " port=%d", &usbport);
		if (error != 1) {
#ifdef DEBUG
			fprintf(stderr, "failed to read usb port location from '%s'\n", data);
#endif
			return (NULL);
		}
	} else {
#ifdef DEBUG
			fprintf(stderr, "failed to parse location '%s'\n", data);
#endif
			return (NULL);
	}
#ifdef DEBUG
	fprintf(stderr, "USB port location=%d\n", usbport);
#endif

	/*
	 * Now go through it all again but only look at those matching the
	 * usb port location we found.
	 */
	for (i = 0; ; i++) {
		FUNC4(buf, 64, SYSCTL_LOCATION, i);
		len = 127;
		FUNC2(&data, 0, sizeof(data));
		error = FUNC10(buf, data, &len, NULL, 0);
		if (error != 0)
			break;
		data[len] = '\0';
		q = FUNC9(data, "port=");
		if (q == NULL)
			continue;
		FUNC6(q, " port=%d", &usbport0);
		if (usbport != usbport0)
			continue;

		/* Try to add ports */	
		for (p = port_type_list; *p != NULL; p++) {
			FUNC4(buf, 64, SYSCTL_NAME_TTY, i, *p);
			len = 127;
			FUNC2(&data, 0, sizeof(data));
			error = FUNC10(buf, data, &len, NULL, 0);
			data[len] = '\0';
#ifdef DEBUG
			fprintf(stderr, "sysctl %s returned(%d): %s\n",
			    buf, error, error == 0 ? data : "FAILED");
#endif
			if (error == 0) {
				list = FUNC3(list, (list_size + 1) * sizeof(char *));
				list[list_size] = FUNC1(FUNC8(data) + FUNC8(TTY_NAME));
		    		FUNC5(list[list_size], TTY_NAME, data);
		    		list_size++;
			}
		}
	}
	list = FUNC3(list, (list_size + 1) * sizeof(char *));
	list[list_size] = NULL;
	return (list);
}