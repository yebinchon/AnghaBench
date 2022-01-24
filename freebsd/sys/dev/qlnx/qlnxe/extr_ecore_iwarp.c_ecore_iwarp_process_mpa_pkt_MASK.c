#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct unaligned_opaque_data {int cid; int first_mpa_offset; } ;
struct ecore_iwarp_ll2_mpa_buf {int placement_offset; int tcp_payload_len; struct unaligned_opaque_data data; struct ecore_iwarp_ll2_buff* ll2_buf; } ;
struct ecore_iwarp_ll2_buff {scalar_t__ data; } ;
struct ecore_iwarp_fpdu {int fpdu_length; int incomplete_bytes; } ;
struct ecore_hwfn {TYPE_2__* p_rdma_info; } ;
typedef  enum ecore_iwarp_mpa_pkt_type { ____Placeholder_ecore_iwarp_mpa_pkt_type } ecore_iwarp_mpa_pkt_type ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_3__ {int /*<<< orphan*/  ll2_mpa_handle; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct unaligned_opaque_data*) ; 
#define  ECORE_IWARP_MPA_PKT_PACKED 130 
#define  ECORE_IWARP_MPA_PKT_PARTIAL 129 
#define  ECORE_IWARP_MPA_PKT_UNALIGNED 128 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int ECORE_SUCCESS ; 
 int ECORE_UNKNOWN_ERROR ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_iwarp_fpdu*,int) ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_iwarp_fpdu*,struct unaligned_opaque_data*,struct ecore_iwarp_ll2_buff*,int) ; 
 struct ecore_iwarp_fpdu* FUNC5 (struct ecore_hwfn*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_iwarp_ll2_buff*,struct ecore_iwarp_fpdu*,struct unaligned_opaque_data*,int,int) ; 
 int FUNC7 (struct ecore_hwfn*,struct ecore_iwarp_ll2_buff*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ecore_hwfn*,struct ecore_iwarp_fpdu*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ecore_hwfn*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct ecore_hwfn*,struct ecore_iwarp_fpdu*,struct unaligned_opaque_data*,struct ecore_iwarp_ll2_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ecore_hwfn*,struct ecore_iwarp_fpdu*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct ecore_hwfn*,struct ecore_iwarp_fpdu*) ; 

__attribute__((used)) static enum _ecore_status_t
FUNC13(struct ecore_hwfn *p_hwfn,
			    struct ecore_iwarp_ll2_mpa_buf *mpa_buf)
{
	struct ecore_iwarp_ll2_buff *buf = mpa_buf->ll2_buf;
	enum ecore_iwarp_mpa_pkt_type pkt_type;
	struct unaligned_opaque_data *curr_pkt = &mpa_buf->data;
	struct ecore_iwarp_fpdu *fpdu;
	u8 *mpa_data;
	enum _ecore_status_t rc = ECORE_SUCCESS;

	FUNC9(
		p_hwfn, (u8 *)(buf->data) + mpa_buf->placement_offset);

	fpdu = FUNC5(p_hwfn, curr_pkt->cid & 0xffff);
	if (!fpdu) {/* something corrupt with cid, post rx back */
		FUNC0(p_hwfn, "Invalid cid, drop and post back to rx cid=%x\n",
		       curr_pkt->cid);
		rc = FUNC7(
			p_hwfn, buf, p_hwfn->p_rdma_info->iwarp.ll2_mpa_handle);

		if (rc) { /* not much we can do here except log and free */
			FUNC0(p_hwfn, "Post rx buffer failed\n");

			/* we don't expect any failures from rx, not even
			 * busy since we allocate #bufs=#descs
			 */
			rc = ECORE_UNKNOWN_ERROR;
		}
		return rc;
	}

	do {
		mpa_data = ((u8 *)(buf->data) + curr_pkt->first_mpa_offset);

		pkt_type = FUNC8(p_hwfn, fpdu,
						    mpa_buf->tcp_payload_len,
						    mpa_data);

		switch (pkt_type) {
		case ECORE_IWARP_MPA_PKT_PARTIAL:
			FUNC6(buf, fpdu,
					      curr_pkt,
					      mpa_buf->tcp_payload_len,
					      mpa_buf->placement_offset);

			if (!FUNC2(curr_pkt)) {
				mpa_buf->tcp_payload_len = 0;
				break;
			}

			rc = FUNC12(p_hwfn, fpdu);

			if (rc) {
				FUNC1(p_hwfn, ECORE_MSG_RDMA,
					   "Can't send FPDU:reset rc=%d\n", rc);
				FUNC3(fpdu, sizeof(*fpdu));
				break;
			}

			mpa_buf->tcp_payload_len = 0;
			break;
		case ECORE_IWARP_MPA_PKT_PACKED:
			if (fpdu->fpdu_length == 8) {
				FUNC0(p_hwfn, "SUSPICIOUS fpdu_length = 0x%x: assuming bug...aborting this packet...\n",
				       fpdu->fpdu_length);
				mpa_buf->tcp_payload_len = 0;
				break;
			}

			FUNC6(buf, fpdu,
					      curr_pkt,
					      mpa_buf->tcp_payload_len,
					      mpa_buf->placement_offset);

			rc = FUNC10(p_hwfn, fpdu, curr_pkt, buf,
						   mpa_buf->tcp_payload_len,
						   pkt_type);
			if (rc) {
				FUNC1(p_hwfn, ECORE_MSG_RDMA,
					   "Can't send FPDU:reset rc=%d\n", rc);
				FUNC3(fpdu, sizeof(*fpdu));
				break;
			}
			mpa_buf->tcp_payload_len -= fpdu->fpdu_length;
			curr_pkt->first_mpa_offset += fpdu->fpdu_length;
			break;
		case ECORE_IWARP_MPA_PKT_UNALIGNED:
			FUNC11(p_hwfn, fpdu, mpa_data);
			if (mpa_buf->tcp_payload_len < fpdu->incomplete_bytes) {
				/* special handling of fpdu split over more
				 * than 2 segments
				 */
				if (FUNC2(curr_pkt)) {
					rc = FUNC12(p_hwfn,
									fpdu);
					/* packet will be re-processed later */
					if (rc)
						return rc;
				}

				rc = FUNC4(
					p_hwfn, fpdu, curr_pkt,
					buf, mpa_buf->tcp_payload_len);

				/* packet will be re-processed later */
				if (rc)
					return rc;

				mpa_buf->tcp_payload_len = 0;

				break;
			}

			rc = FUNC10(p_hwfn, fpdu, curr_pkt, buf,
						   mpa_buf->tcp_payload_len,
						   pkt_type);
			if (rc) {
				FUNC1(p_hwfn, ECORE_MSG_RDMA,
					   "Can't send FPDU:delay rc=%d\n", rc);
				/* don't reset fpdu -> we need it for next
				 * classify
				 */
				break;
			}
			mpa_buf->tcp_payload_len -= fpdu->incomplete_bytes;
			curr_pkt->first_mpa_offset += fpdu->incomplete_bytes;
			/* The framed PDU was sent - no more incomplete bytes */
			fpdu->incomplete_bytes = 0;
			break;
		}

	} while (mpa_buf->tcp_payload_len && !rc);

	return rc;
}