#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sctphdr {scalar_t__ checksum; scalar_t__ v_tag; void* dest_port; void* src_port; } ;
struct TYPE_6__ {TYPE_1__* Init; } ;
struct sctp_nat_msg {TYPE_4__* ip_hdr; TYPE_3__* sctp_hdr; TYPE_2__ sctpchnk; } ;
struct sctp_nat_assoc {int /*<<< orphan*/  l_addr; int /*<<< orphan*/  a_addr; scalar_t__ l_vtag; scalar_t__ g_vtag; } ;
struct sctp_error_cause {void* code; void* length; } ;
struct sctp_chunkhdr {int /*<<< orphan*/  chunk_flags; void* chunk_length; int /*<<< orphan*/  chunk_type; } ;
struct libalias {int dummy; } ;
struct ip {int ip_hl; int ip_ttl; int /*<<< orphan*/  ip_dst; int /*<<< orphan*/  ip_sum; int /*<<< orphan*/  ip_src; int /*<<< orphan*/  ip_p; scalar_t__ ip_off; int /*<<< orphan*/  ip_id; void* ip_len; scalar_t__ ip_tos; int /*<<< orphan*/  ip_v; } ;
struct TYPE_8__ {int /*<<< orphan*/  ip_src; int /*<<< orphan*/  ip_dst; int /*<<< orphan*/  ip_id; int /*<<< orphan*/  ip_v; void* ip_len; } ;
struct TYPE_7__ {void* src_port; void* dest_port; scalar_t__ v_tag; } ;
struct TYPE_5__ {scalar_t__ initiate_tag; } ;

/* Variables and functions */
 int INET_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IPPROTO_SCTP ; 
 int /*<<< orphan*/  SCTP_ABORT_ASSOCIATION ; 
 int /*<<< orphan*/  SCTP_HAD_NO_TCB ; 
 int /*<<< orphan*/  SCTP_MIDDLEBOX_FLAG ; 
 int SCTP_MISSING_NAT ; 
 int SCTP_NAT_TABLE_COLLISION ; 
 int /*<<< orphan*/  SCTP_OPERATION_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SN_LOG_EVENT ; 
#define  SN_REFLECT_ERROR 131 
#define  SN_REPLY_ABORT 130 
#define  SN_REPLY_ERROR 129 
#define  SN_SEND_ABORT 128 
 int SN_TO_LOCAL ; 
 int SN_TX_ABORT ; 
 int SN_TX_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned char*,int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ip*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,struct ip*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (void*) ; 

__attribute__((used)) static void
FUNC11(struct libalias *la, struct sctp_nat_msg *sm, struct sctp_nat_assoc *assoc, int sndrply, int direction)
{
	int sctp_size = sizeof(struct sctphdr) + sizeof(struct sctp_chunkhdr) + sizeof(struct sctp_error_cause);
	int ip_size = sizeof(struct ip) + sctp_size;
	int include_error_cause = 1;
	char tmp_ip[ip_size];
	char addrbuf[INET_ADDRSTRLEN];

	if (FUNC10(sm->ip_hdr->ip_len) < ip_size) { /* short packet, cannot send error cause */
		include_error_cause = 0;
		ip_size = ip_size -  sizeof(struct sctp_error_cause);
		sctp_size = sctp_size -  sizeof(struct sctp_error_cause);
	}
	/* Assign header pointers packet */
	struct ip* ip = (struct ip *) tmp_ip;
	struct sctphdr* sctp_hdr = (struct sctphdr *) ((char *) ip + sizeof(*ip));
	struct sctp_chunkhdr* chunk_hdr = (struct sctp_chunkhdr *) ((char *) sctp_hdr + sizeof(*sctp_hdr));
	struct sctp_error_cause* error_cause = (struct sctp_error_cause *) ((char *) chunk_hdr + sizeof(*chunk_hdr));

	/* construct ip header */
	ip->ip_v = sm->ip_hdr->ip_v;
	ip->ip_hl = 5; /* 5*32 bit words */
	ip->ip_tos = 0;
	ip->ip_len = FUNC4(ip_size);
	ip->ip_id = sm->ip_hdr->ip_id;
	ip->ip_off = 0;
	ip->ip_ttl = 255;
	ip->ip_p = IPPROTO_SCTP;
	/*
	  The definitions below should be removed when they make it into the SCTP stack
	*/
#define SCTP_MIDDLEBOX_FLAG 0x02
#define SCTP_NAT_TABLE_COLLISION 0x00b0
#define SCTP_MISSING_NAT 0x00b1
	chunk_hdr->chunk_type = (sndrply & SN_TX_ABORT) ? SCTP_ABORT_ASSOCIATION : SCTP_OPERATION_ERROR;
	chunk_hdr->chunk_flags = SCTP_MIDDLEBOX_FLAG;
	if (include_error_cause) {
		error_cause->code = FUNC4((sndrply & SN_REFLECT_ERROR) ? SCTP_MISSING_NAT : SCTP_NAT_TABLE_COLLISION);
		error_cause->length = FUNC4(sizeof(struct sctp_error_cause));
		chunk_hdr->chunk_length = FUNC4(sizeof(*chunk_hdr) + sizeof(struct sctp_error_cause));
	} else {
		chunk_hdr->chunk_length = FUNC4(sizeof(*chunk_hdr));
	}

	/* set specific values */
	switch (sndrply) {
	case SN_REFLECT_ERROR:
		chunk_hdr->chunk_flags |= SCTP_HAD_NO_TCB; /* set Tbit */
		sctp_hdr->v_tag = sm->sctp_hdr->v_tag;
		break;
	case SN_REPLY_ERROR:
		sctp_hdr->v_tag = (direction == SN_TO_LOCAL) ? assoc->g_vtag : assoc->l_vtag ;
		break;
	case SN_SEND_ABORT:
		sctp_hdr->v_tag = sm->sctp_hdr->v_tag;
		break;
	case SN_REPLY_ABORT:
		sctp_hdr->v_tag = sm->sctpchnk.Init->initiate_tag;
		break;
	}

	/* Set send/reply values */
	if (sndrply == SN_SEND_ABORT) { /*pass through NAT */
		ip->ip_src = (direction == SN_TO_LOCAL) ? sm->ip_hdr->ip_src : assoc->a_addr;
		ip->ip_dst = (direction == SN_TO_LOCAL) ? assoc->l_addr : sm->ip_hdr->ip_dst;
		sctp_hdr->src_port = sm->sctp_hdr->src_port;
		sctp_hdr->dest_port = sm->sctp_hdr->dest_port;
	} else { /* reply and reflect */
		ip->ip_src = sm->ip_hdr->ip_dst;
		ip->ip_dst = sm->ip_hdr->ip_src;
		sctp_hdr->src_port = sm->sctp_hdr->dest_port;
		sctp_hdr->dest_port = sm->sctp_hdr->src_port;
	}

	/* Calculate IP header checksum */
	ip->ip_sum = FUNC5(ip);

	/* calculate SCTP header CRC32 */
	sctp_hdr->checksum = 0;
	sctp_hdr->checksum = FUNC7(FUNC3(0xffffffff, (unsigned char *) sctp_hdr, sctp_size));

	FUNC8(sm->ip_hdr, ip, ip_size);

	FUNC1(SN_LOG_EVENT,FUNC2("%s %s 0x%x (->%s:%u vtag=0x%x crc=0x%x)\n",
		((sndrply == SN_SEND_ABORT) ? "Sending" : "Replying"),
		((sndrply & SN_TX_ERROR) ? "ErrorM" : "AbortM"),
		(include_error_cause ? FUNC10(error_cause->code) : 0),
		FUNC6(ip->ip_dst, FUNC0(addrbuf)),
		FUNC10(sctp_hdr->dest_port),
		FUNC9(sctp_hdr->v_tag), FUNC9(sctp_hdr->checksum)));
}