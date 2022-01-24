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
typedef  char u_short ;
struct tcphdr {int th_x2; scalar_t__ th_sum; } ;
struct libalias {int dummy; } ;
struct ip {int /*<<< orphan*/  ip_src; } ;
struct alias_link {int dummy; } ;

/* Variables and functions */
 struct alias_link* FUNC0 (struct libalias*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char FUNC1 (struct alias_link*) ; 
 int /*<<< orphan*/  FUNC2 (struct alias_link*) ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC3 (struct alias_link*) ; 
 scalar_t__ FUNC4 (struct ip*) ; 
 scalar_t__ FUNC5 (struct ip*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int FUNC7 (char) ; 

__attribute__((used)) static int
FUNC8(struct libalias *la, struct ip *pip,
    struct alias_link *lnk,
    char *data,
    int dlen)
{
	struct alias_link *pna_links;
	u_short msg_id, msg_len;
	char *work;
	u_short alias_port, port;
	struct tcphdr *tc;

	work = data;
	work += 5;
	while (work + 4 < data + dlen) {
		FUNC6(&msg_id, work, 2);
		work += 2;
		FUNC6(&msg_len, work, 2);
		work += 2;
		if (FUNC7(msg_id) == 0) {
			/* end of options */
			return (0);
		}
		if ((FUNC7(msg_id) == 1) || (FUNC7(msg_id) == 7)) {
			FUNC6(&port, work, 2);
			pna_links = FUNC0(la, pip->ip_src, FUNC2(lnk),
			    port, 0, IPPROTO_UDP, 1);
			if (pna_links != NULL) {
#ifndef NO_FW_PUNCH
				/* Punch hole in firewall */
				FUNC3(pna_links);
#endif
				tc = (struct tcphdr *)FUNC5(pip);
				alias_port = FUNC1(pna_links);
				FUNC6(work, &alias_port, 2);

				/* Compute TCP checksum for revised packet */
				tc->th_sum = 0;
#ifdef _KERNEL
				tc->th_x2 = 1;
#else
				tc->th_sum = FUNC4(pip);
#endif
			}
		}
		work += FUNC7(msg_len);
	}

	return (0);
}