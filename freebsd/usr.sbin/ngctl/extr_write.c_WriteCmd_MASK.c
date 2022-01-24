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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int u_int ;
typedef  scalar_t__ u_char ;
struct sockaddr_ng {scalar_t__ sg_len; int /*<<< orphan*/  sg_data; int /*<<< orphan*/  sg_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sagbuf ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AF_NETGRAPH ; 
 int BUF_SIZE ; 
 int CMDRTN_ERROR ; 
 int CMDRTN_OK ; 
 int CMDRTN_USAGE ; 
 int /*<<< orphan*/  dsock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (scalar_t__*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ,struct sockaddr*,scalar_t__) ; 
 int FUNC5 (char*,char*,int*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static int
FUNC11(int ac, char **av)
{
	u_int32_t sagbuf[64];
	struct sockaddr_ng *sag = (struct sockaddr_ng *)sagbuf;
	u_char buf[BUF_SIZE];
	const char *hook;
	FILE *fp;
	u_int len;
	int byte;
	int i;

	/* Get arguments */
	if (ac < 3)
		return (CMDRTN_USAGE);
	hook = av[1];

	/* Get data */
	if (FUNC6(av[2], "-f") == 0) {
		if (ac != 4)
			return (CMDRTN_USAGE);
		if ((fp = FUNC2(av[3], "r")) == NULL) {
			FUNC9("can't read file \"%s\"", av[3]);
			return (CMDRTN_ERROR);
		}
		if ((len = FUNC3(buf, 1, sizeof(buf), fp)) == 0) {
			if (FUNC1(fp))
				FUNC9("can't read file \"%s\"", av[3]);
			else
				FUNC10("file \"%s\" is empty", av[3]);
			FUNC0(fp);
			return (CMDRTN_ERROR);
		}
		FUNC0(fp);
	} else {
		for (i = 2, len = 0; i < ac && len < sizeof(buf); i++, len++) {
			if (FUNC5(av[i], "%i", &byte) != 1
			    || (byte < -128 || byte > 255)) {
				FUNC10("invalid byte \"%s\"", av[i]);
				return (CMDRTN_ERROR);
			}
			buf[len] = (u_char)byte;
		}
		if (len == 0)
			return (CMDRTN_USAGE);
	}

	/* Send data */
	sag->sg_len = 3 + FUNC8(hook);
	sag->sg_family = AF_NETGRAPH;
	FUNC7(sag->sg_data, hook, sizeof(sagbuf) - 2);
	if (FUNC4(dsock, buf, len,
	    0, (struct sockaddr *)sag, sag->sg_len) == -1) {
		FUNC9("writing to hook \"%s\"", hook);
		return (CMDRTN_ERROR);
	}

	/* Done */
	return (CMDRTN_OK);
}