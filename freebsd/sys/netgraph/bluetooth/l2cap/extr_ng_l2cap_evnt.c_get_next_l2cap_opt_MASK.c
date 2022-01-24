#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
typedef  TYPE_3__* ng_l2cap_cfg_opt_val_p ;
typedef  TYPE_4__* ng_l2cap_cfg_opt_p ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_10__ {int type; int length; } ;
struct TYPE_8__ {void* delay_variation; void* latency; void* peak_bandwidth; void* token_bucket_size; void* token_rate; } ;
struct TYPE_9__ {TYPE_2__ flow; void* flush_timo; void* mtu; } ;

/* Variables and functions */
#define  NG_L2CAP_OPT_FLUSH_TIMO 130 
 int NG_L2CAP_OPT_FLUSH_TIMO_SIZE ; 
 int FUNC0 (int) ; 
 int NG_L2CAP_OPT_HINT_MASK ; 
#define  NG_L2CAP_OPT_MTU 129 
 int NG_L2CAP_OPT_MTU_SIZE ; 
#define  NG_L2CAP_OPT_QOS 128 
 int NG_L2CAP_OPT_QOS_SIZE ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct mbuf *m, int *off, ng_l2cap_cfg_opt_p hdr,
		ng_l2cap_cfg_opt_val_p val)
{
	int	hint, len = m->m_pkthdr.len - (*off);

	if (len == 0)
		return (0);
	if (len < 0 || len < sizeof(*hdr))
		return (-1);

	FUNC3(m, *off, sizeof(*hdr), (caddr_t) hdr);
	*off += sizeof(*hdr);
	len  -= sizeof(*hdr);

	hint = FUNC0(hdr->type);
	hdr->type &= NG_L2CAP_OPT_HINT_MASK;

	switch (hdr->type) {
	case NG_L2CAP_OPT_MTU:
		if (hdr->length != NG_L2CAP_OPT_MTU_SIZE || len < hdr->length)
			return (-2);

		FUNC3(m, *off, NG_L2CAP_OPT_MTU_SIZE, (caddr_t) val);
		val->mtu = FUNC1(val->mtu);
		*off += NG_L2CAP_OPT_MTU_SIZE;
		break;

	case NG_L2CAP_OPT_FLUSH_TIMO:
		if (hdr->length != NG_L2CAP_OPT_FLUSH_TIMO_SIZE || 
		    len < hdr->length)
			return (-2);

		FUNC3(m, *off, NG_L2CAP_OPT_FLUSH_TIMO_SIZE, (caddr_t)val);
		val->flush_timo = FUNC1(val->flush_timo);
		*off += NG_L2CAP_OPT_FLUSH_TIMO_SIZE;
		break;

	case NG_L2CAP_OPT_QOS:
		if (hdr->length != NG_L2CAP_OPT_QOS_SIZE || len < hdr->length)
			return (-2);

		FUNC3(m, *off, NG_L2CAP_OPT_QOS_SIZE, (caddr_t) val);
		val->flow.token_rate = FUNC2(val->flow.token_rate);
		val->flow.token_bucket_size = 
				FUNC2(val->flow.token_bucket_size);
		val->flow.peak_bandwidth = FUNC2(val->flow.peak_bandwidth);
		val->flow.latency = FUNC2(val->flow.latency);
		val->flow.delay_variation = FUNC2(val->flow.delay_variation);
		*off += NG_L2CAP_OPT_QOS_SIZE;
		break;

	default:
		if (hint)
			*off += hdr->length;
		else
			return (-3);
		break;
	}

	return (1);
}