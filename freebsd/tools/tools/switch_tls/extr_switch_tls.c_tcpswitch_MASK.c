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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int /*<<< orphan*/  sa_len; } ;
struct host_service {char* hs_host; char* hs_service; } ;

/* Variables and functions */
 int SW_TLS ; 
 size_t TCPDROP_FOREIGN ; 
 size_t TCPDROP_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_storage*,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr const*,struct host_service*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sockaddr_storage**,int) ; 
 scalar_t__ tcpswitch_list_commands ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,char*) ; 

__attribute__((used)) static bool
FUNC5(const struct sockaddr *lsa, const struct sockaddr *fsa, int mode)
{
	struct host_service local, foreign;
	struct sockaddr_storage addrs[2];
	int rv;

	FUNC0(&addrs[TCPDROP_FOREIGN], fsa, fsa->sa_len);
	FUNC0(&addrs[TCPDROP_LOCAL], lsa, lsa->sa_len);

	FUNC2(lsa, &local);
	FUNC2(fsa, &foreign);

	if (tcpswitch_list_commands) {
		FUNC1("switch_tls %s %s %s %s %s\n",
		    mode == SW_TLS ? "-s" : "-i",
		    local.hs_host, local.hs_service,
		    foreign.hs_host, foreign.hs_service);
		return (true);
	}

	rv = FUNC3(mode == SW_TLS ? "net.inet.tcp.switch_to_sw_tls" :
	    "net.inet.tcp.switch_to_ifnet_tls", NULL, NULL, &addrs,
	    sizeof addrs);
	if (rv == -1) {
		FUNC4("%s %s %s %s", local.hs_host, local.hs_service,
		    foreign.hs_host, foreign.hs_service);
		return (false);
	}
	FUNC1("%s %s %s %s: switched\n", local.hs_host, local.hs_service,
	    foreign.hs_host, foreign.hs_service);
	return (true);
}