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
typedef  int u8 ;
typedef  int u16 ;
struct ecore_iwarp_fpdu {int fpdu_length; scalar_t__ incomplete_bytes; } ;
struct ecore_hwfn {int dummy; } ;
typedef  enum ecore_iwarp_mpa_pkt_type { ____Placeholder_ecore_iwarp_mpa_pkt_type } ecore_iwarp_mpa_pkt_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int) ; 
 int ECORE_IWARP_MPA_PKT_PACKED ; 
 int ECORE_IWARP_MPA_PKT_PARTIAL ; 
 int ECORE_IWARP_MPA_PKT_UNALIGNED ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/ * pkt_type_str ; 

__attribute__((used)) static enum ecore_iwarp_mpa_pkt_type
FUNC3(struct ecore_hwfn *p_hwfn,
			 struct ecore_iwarp_fpdu *fpdu,
			 u16 tcp_payload_len,
			 u8 *mpa_data)

{
	enum ecore_iwarp_mpa_pkt_type pkt_type;
	u16 mpa_len;

	if (fpdu->incomplete_bytes) {
		pkt_type = ECORE_IWARP_MPA_PKT_UNALIGNED;
		goto out;
	}

	/* special case of one byte remaining... */
	if (tcp_payload_len == 1) {
		/* lower byte will be read next packet */
		fpdu->fpdu_length = *mpa_data << 8;
		pkt_type = ECORE_IWARP_MPA_PKT_PARTIAL;
		goto out;
	}

	mpa_len = FUNC2(*((u16 *)(mpa_data)));
	fpdu->fpdu_length = FUNC1(mpa_len);

	if (fpdu->fpdu_length <= tcp_payload_len)
		pkt_type = ECORE_IWARP_MPA_PKT_PACKED;
	else
		pkt_type = ECORE_IWARP_MPA_PKT_PARTIAL;

out:
	FUNC0(p_hwfn, ECORE_MSG_RDMA,
		   "MPA_ALIGN: %s: fpdu_length=0x%x tcp_payload_len:0x%x\n",
		   pkt_type_str[pkt_type], fpdu->fpdu_length, tcp_payload_len);

	return pkt_type;
}