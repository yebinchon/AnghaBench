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
struct socket {int /*<<< orphan*/  so_rcv; } ;
struct sockaddr_ng {int sg_len; char* sg_data; int /*<<< orphan*/  sg_family; } ;
struct sockaddr {int dummy; } ;
struct ngsock {struct ngpcb* datasock; } ;
struct ngpcb {struct socket* ng_socket; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;

/* Variables and functions */
 int /*<<< orphan*/  AF_NETGRAPH ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  NG_HOOKSIZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ngsock* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRAP_ERROR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct sockaddr*,struct mbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(hook_p hook, item_p item)
{
	struct ngsock *const priv = FUNC5(FUNC4(hook));
	struct ngpcb *const pcbp = priv->datasock;
	struct socket *so;
	struct sockaddr_ng *addr;
	char *addrbuf[NG_HOOKSIZ + 4];
	int addrlen;
	struct mbuf *m;

	FUNC0(item, m);
	FUNC1(item);

	/* If there is no data socket, black-hole it. */
	if (pcbp == NULL) {
		FUNC2(m);
		return (0);
	}
	so = pcbp->ng_socket;

	/* Get the return address into a sockaddr. */
	addrlen = FUNC10(FUNC3(hook));	/* <= NG_HOOKSIZ - 1 */
	addr = (struct sockaddr_ng *) addrbuf;
	addr->sg_len = addrlen + 3;
	addr->sg_family = AF_NETGRAPH;
	FUNC6(FUNC3(hook), addr->sg_data, addrlen);
	addr->sg_data[addrlen] = '\0';

	/* Try to tell the socket which hook it came in on. */
	if (FUNC8(&so->so_rcv, (struct sockaddr *)addr, m, NULL) == 0) {
		FUNC7(m);
		TRAP_ERROR;
		return (ENOBUFS);
	}
	FUNC9(so);
	return (0);
}