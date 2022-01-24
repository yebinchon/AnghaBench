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
struct tcphdr {int th_off; int /*<<< orphan*/  th_dport; } ;
struct libalias {int dummy; } ;
struct ip {int ip_hl; int /*<<< orphan*/  ip_len; } ;
struct alias_link {int dummy; } ;

/* Variables and functions */
 scalar_t__ RTSP_CONTROL_PORT_NUMBER_1 ; 
 scalar_t__ RTSP_CONTROL_PORT_NUMBER_2 ; 
 int /*<<< orphan*/  FUNC0 (struct libalias*,struct ip*,struct alias_link*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct libalias*,struct ip*,struct alias_link*,char*,char const*) ; 
 scalar_t__ FUNC2 (struct ip*) ; 
 scalar_t__ FUNC3 (char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(struct libalias *la, struct ip *pip, struct alias_link *lnk, int maxpacketsize)
{
	int hlen, tlen, dlen;
	struct tcphdr *tc;
	char *data;
	const char *setup = "SETUP", *pna = "PNA", *str200 = "200";
	const char *okstr = "OK", *client_port_str = "client_port";
	const char *server_port_str = "server_port";
	int i, parseOk;

	(void)maxpacketsize;

	tc = (struct tcphdr *)FUNC2(pip);
	hlen = (pip->ip_hl + tc->th_off) << 2;
	tlen = FUNC4(pip->ip_len);
	dlen = tlen - hlen;

	data = (char *)pip;
	data += hlen;

	/* When aliasing a client, check for the SETUP request */
	if ((FUNC4(tc->th_dport) == RTSP_CONTROL_PORT_NUMBER_1) ||
	    (FUNC4(tc->th_dport) == RTSP_CONTROL_PORT_NUMBER_2)) {

		if (dlen >= (int)FUNC5(setup)) {
			if (FUNC3(data, setup, FUNC5(setup)) == 0) {
				FUNC1(la, pip, lnk, data, client_port_str);
				return;
			}
		}
		if (dlen >= (int)FUNC5(pna)) {
			if (FUNC3(data, pna, FUNC5(pna)) == 0) {
				FUNC0(la, pip, lnk, data, dlen);
			}
		}
	} else {

		/*
		 * When aliasing a server, check for the 200 reply
		 * Accommodate varying number of blanks between 200 & OK
		 */

		if (dlen >= (int)FUNC5(str200)) {

			for (parseOk = 0, i = 0;
			    i <= dlen - (int)FUNC5(str200);
			    i++) {
				if (FUNC3(&data[i], str200, FUNC5(str200)) == 0) {
					parseOk = 1;
					break;
				}
			}
			if (parseOk) {

				i += FUNC5(str200);	/* skip string found */
				while (data[i] == ' ')	/* skip blank(s) */
					i++;

				if ((dlen - i) >= (int)FUNC5(okstr)) {

					if (FUNC3(&data[i], okstr, FUNC5(okstr)) == 0)
						FUNC1(la, pip, lnk, data, server_port_str);

				}
			}
		}
	}
}