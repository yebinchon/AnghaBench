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
typedef  int /*<<< orphan*/  u_char ;
struct tcphdr {int dummy; } ;
struct secasvar {int dummy; } ;
struct secasindex {scalar_t__ reqid; int /*<<< orphan*/  mode; int /*<<< orphan*/  proto; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IPSEC_MODE_TCPMD5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TCP_SIGLEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct secasvar* FUNC2 (struct secasindex*) ; 
 int /*<<< orphan*/  FUNC3 (struct secasvar**) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,struct tcphdr*,struct secasvar*,char*) ; 
 int /*<<< orphan*/  tcps_sig_err_buildsig ; 
 int /*<<< orphan*/  tcps_sig_rcvbadsig ; 
 int /*<<< orphan*/  tcps_sig_rcvgoodsig ; 

__attribute__((used)) static int
FUNC8(struct mbuf *m, struct tcphdr *th, u_char *buf)
{
	char tmpdigest[TCP_SIGLEN];
	struct secasindex saidx;
	struct secasvar *sav;

	FUNC4(m, &saidx.src, &saidx.dst);
	saidx.proto = IPPROTO_TCP;
	saidx.mode = IPSEC_MODE_TCPMD5;
	saidx.reqid = 0;
	sav = FUNC2(&saidx);
	if (sav == NULL) {
		FUNC0(tcps_sig_err_buildsig);
		return (EACCES);
	}
	/*
	 * tcp_input() operates with TCP header fields in host
	 * byte order. We expect them in network byte order.
	 */
	FUNC6(th);
	FUNC7(m, th, sav, tmpdigest);
	FUNC5(th);
	FUNC3(&sav);
	if (FUNC1(buf, tmpdigest, TCP_SIGLEN) != 0) {
		FUNC0(tcps_sig_rcvbadsig);
		return (EACCES);
	}
	FUNC0(tcps_sig_rcvgoodsig);
	return (0);
}