#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct ntb_transport_qp {int dummy; } ;
struct ntb_net_queue {int /*<<< orphan*/  ifp; struct ntb_net_ctx* sc; } ;
struct ntb_net_ctx {int num_queues; int queues; } ;
struct TYPE_2__ {int csum_data; void* csum_flags; struct ntb_net_queue* flowid; int /*<<< orphan*/  rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
#define  ETHERTYPE_IP 129 
#define  ETHERTYPE_IPV6 128 
 int IFCAP_RXCSUM ; 
 int IFCAP_RXCSUM_IPV6 ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  KTR_NTB ; 
 int /*<<< orphan*/  M_HASHTYPE_OPAQUE ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int /*<<< orphan*/ ) ; 
 void* NTB_CSUM_SET ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int,int,void*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct ntb_transport_qp *qp, void *qp_data, void *data,
    int len)
{
	struct ntb_net_queue *q = qp_data;
	struct ntb_net_ctx *sc = q->sc;
	struct mbuf *m = data;
	if_t ifp = q->ifp;
	uint16_t proto;

	FUNC0(KTR_NTB, "RX: rx handler (%d)", len);
	if (len < 0) {
		FUNC3(ifp, IFCOUNTER_IERRORS, 1);
		return;
	}

	m->m_pkthdr.rcvif = ifp;
	if (sc->num_queues > 1) {
		m->m_pkthdr.flowid = q - sc->queues;
		FUNC1(m, M_HASHTYPE_OPAQUE);
	}
	if (FUNC2(ifp) & (IFCAP_RXCSUM | IFCAP_RXCSUM_IPV6)) {
		FUNC5(m, 12, 2, (void *)&proto);
		switch (FUNC6(proto)) {
		case ETHERTYPE_IP:
			if (FUNC2(ifp) & IFCAP_RXCSUM) {
				m->m_pkthdr.csum_data = 0xffff;
				m->m_pkthdr.csum_flags = NTB_CSUM_SET;
			}
			break;
		case ETHERTYPE_IPV6:
			if (FUNC2(ifp) & IFCAP_RXCSUM_IPV6) {
				m->m_pkthdr.csum_data = 0xffff;
				m->m_pkthdr.csum_flags = NTB_CSUM_SET;
			}
			break;
		}
	}
	FUNC3(ifp, IFCOUNTER_IPACKETS, 1);
	FUNC4(ifp, m);
}