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
typedef  int u_short ;
struct tcphdr {int th_x2; scalar_t__ th_sum; int /*<<< orphan*/  th_off; int /*<<< orphan*/  th_seq; } ;
struct libalias {int dummy; } ;
struct ip {int ip_len; int /*<<< orphan*/  ip_sum; int /*<<< orphan*/  ip_hl; int /*<<< orphan*/  ip_src; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct alias_link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alias_link*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct libalias*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct libalias*,struct in_addr,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct alias_link* FUNC4 (struct libalias*,int /*<<< orphan*/ ,struct in_addr,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct alias_link*) ; 
 int /*<<< orphan*/  FUNC6 (struct alias_link*) ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (struct alias_link*) ; 
 int RTSP_PORT_GROUP ; 
 int /*<<< orphan*/  FUNC9 (struct alias_link*) ; 
 scalar_t__ FUNC10 (struct ip*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (int) ; 
 scalar_t__ FUNC13 (struct ip*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int FUNC15 (int) ; 
 int FUNC16 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC18 (char const*) ; 

__attribute__((used)) static int
FUNC19(struct libalias *la, struct ip *pip,
    struct alias_link *lnk,
    char *data,
    const char *port_str)
{
	int hlen, tlen, dlen;
	struct tcphdr *tc;
	int i, j, pos, state, port_dlen, new_dlen, delta;
	u_short p[2], new_len;
	u_short sport, eport, base_port;
	u_short salias = 0, ealias = 0, base_alias = 0;
	const char *transport_str = "transport:";
	char newdata[2048], *port_data, *port_newdata, stemp[80];
	int links_created = 0, pkt_updated = 0;
	struct alias_link *rtsp_lnk = NULL;
	struct in_addr null_addr;

	/* Calculate data length of TCP packet */
	tc = (struct tcphdr *)FUNC13(pip);
	hlen = (pip->ip_hl + tc->th_off) << 2;
	tlen = FUNC15(pip->ip_len);
	dlen = tlen - hlen;

	/* Find keyword, "Transport: " */
	pos = FUNC16(data, dlen, transport_str);
	if (pos < 0) {
		return (-1);
	}
	port_data = data + pos;
	port_dlen = dlen - pos;

	FUNC14(newdata, data, pos);
	port_newdata = newdata + pos;

	while (port_dlen > (int)FUNC18(port_str)) {
		/* Find keyword, appropriate port string */
		pos = FUNC16(port_data, port_dlen, port_str);
		if (pos < 0) {
			break;
		}
		FUNC14(port_newdata, port_data, pos + 1);
		port_newdata += (pos + 1);

		p[0] = p[1] = 0;
		sport = eport = 0;
		state = 0;
		for (i = pos; i < port_dlen; i++) {
			switch (state) {
			case 0:
				if (port_data[i] == '=') {
					state++;
				}
				break;
			case 1:
				if (FUNC7(port_data[i])) {
					p[0] = p[0] * 10 + port_data[i] - '0';
				} else {
					if (port_data[i] == ';') {
						state = 3;
					}
					if (port_data[i] == '-') {
						state++;
					}
				}
				break;
			case 2:
				if (FUNC7(port_data[i])) {
					p[1] = p[1] * 10 + port_data[i] - '0';
				} else {
					state++;
				}
				break;
			case 3:
				base_port = p[0];
				sport = FUNC12(p[0]);
				eport = FUNC12(p[1]);

				if (!links_created) {

					links_created = 1;
					/*
					 * Find an even numbered port
					 * number base that satisfies the
					 * contiguous number of ports we
					 * need
					 */
					null_addr.s_addr = 0;
					if (0 == (salias = FUNC3(la, null_addr,
					    FUNC2(la, pip->ip_src),
					    sport, 0,
					    RTSP_PORT_GROUP,
					    IPPROTO_UDP, 1))) {
#ifdef LIBALIAS_DEBUG
						fprintf(stderr,
						    "PacketAlias/RTSP: Cannot find contiguous RTSP data ports\n");
#endif
					} else {

						base_alias = FUNC15(salias);
						for (j = 0; j < RTSP_PORT_GROUP; j++) {
							/*
							 * Establish link
							 * to port found in
							 * RTSP packet
							 */
							rtsp_lnk = FUNC4(la, FUNC6(lnk), null_addr,
							    FUNC12(base_port + j), FUNC12(base_alias + j),
							    IPPROTO_UDP);
							if (rtsp_lnk != NULL) {
#ifndef NO_FW_PUNCH
								/*
								 * Punch
								 * hole in
								 * firewall
								 */
								FUNC8(rtsp_lnk);
#endif
							} else {
#ifdef LIBALIAS_DEBUG
								fprintf(stderr,
								    "PacketAlias/RTSP: Cannot allocate RTSP data ports\n");
#endif
								break;
							}
						}
					}
					ealias = FUNC12(base_alias + (RTSP_PORT_GROUP - 1));
				}
				if (salias && rtsp_lnk) {

					pkt_updated = 1;

					/* Copy into IP packet */
					FUNC17(stemp, "%d", FUNC15(salias));
					FUNC14(port_newdata, stemp, FUNC18(stemp));
					port_newdata += FUNC18(stemp);

					if (eport != 0) {
						*port_newdata = '-';
						port_newdata++;

						/* Copy into IP packet */
						FUNC17(stemp, "%d", FUNC15(ealias));
						FUNC14(port_newdata, stemp, FUNC18(stemp));
						port_newdata += FUNC18(stemp);
					}
					*port_newdata = ';';
					port_newdata++;
				}
				state++;
				break;
			}
			if (state > 3) {
				break;
			}
		}
		port_data += i;
		port_dlen -= i;
	}

	if (!pkt_updated)
		return (-1);

	FUNC14(port_newdata, port_data, port_dlen);
	port_newdata += port_dlen;
	*port_newdata = '\0';

	/* Create new packet */
	new_dlen = port_newdata - newdata;
	FUNC14(data, newdata, new_dlen);

	FUNC9(lnk);
	tc = (struct tcphdr *)FUNC13(pip);
	delta = FUNC5(tc->th_seq, lnk);
	FUNC0(lnk, delta + new_dlen - dlen, pip->ip_hl, pip->ip_len,
	    tc->th_seq, tc->th_off);

	new_len = FUNC12(hlen + new_dlen);
	FUNC1(&pip->ip_sum,
	    &new_len,
	    &pip->ip_len,
	    1);
	pip->ip_len = new_len;

	tc->th_sum = 0;
#ifdef _KERNEL
	tc->th_x2 = 1;
#else
	tc->th_sum = FUNC10(pip);
#endif
	return (0);
}