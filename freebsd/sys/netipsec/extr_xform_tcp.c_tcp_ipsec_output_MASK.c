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
 struct secasvar* FUNC1 (struct secasindex*) ; 
 int /*<<< orphan*/  FUNC2 (struct secasvar**) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,struct tcphdr*,struct secasvar*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcps_sig_err_buildsig ; 

__attribute__((used)) static int
FUNC5(struct mbuf *m, struct tcphdr *th, u_char *buf)
{
	struct secasindex saidx;
	struct secasvar *sav;

	FUNC3(m, &saidx.src, &saidx.dst);
	saidx.proto = IPPROTO_TCP;
	saidx.mode = IPSEC_MODE_TCPMD5;
	saidx.reqid = 0;
	sav = FUNC1(&saidx);
	if (sav == NULL) {
		FUNC0(tcps_sig_err_buildsig);
		return (EACCES);
	}
	FUNC4(m, th, sav, buf);
	FUNC2(&sav);
	return (0);
}