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
typedef  int /*<<< orphan*/  uint8_t ;
struct sample_node {int dummy; } ;
struct ether_addr {int dummy; } ;
struct TYPE_2__ {scalar_t__ buf; } ;
struct ath_ratestats {TYPE_1__ re; } ;
struct ath_rateioctl_tlv {int tlv_id; int tlv_len; } ;
struct ath_rateioctl_rt {int dummy; } ;

/* Variables and functions */
 int ATH_RATE_TLV_RATETABLE ; 
 int ATH_RATE_TLV_SAMPLENODE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_ratestats*,struct ath_rateioctl_rt*,struct sample_node*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC3(struct ath_ratestats *r, struct ether_addr *e)
{
	struct ath_rateioctl_tlv *av;
	struct sample_node *sn = NULL;
	struct ath_rateioctl_rt *rt = NULL;
	int error = 0;
	uint8_t *buf = (uint8_t *) r->re.buf;

	/*
	 * For now, hard-code the TLV order and contents.  Ew!
	 */
	av = (struct ath_rateioctl_tlv *) buf;
	if (av->tlv_id != ATH_RATE_TLV_RATETABLE) {
		FUNC2(stderr, "unexpected rate control TLV (got 0x%x, "
		    "expected 0x%x\n",
		    av->tlv_id,
		    ATH_RATE_TLV_RATETABLE);
		FUNC1(127);
	}
	if (av->tlv_len != sizeof(struct ath_rateioctl_rt)) {
		FUNC2(stderr, "unexpected TLV len (got %d bytes, "
		    "expected %d bytes\n",
		    av->tlv_len,
		    (int) sizeof(struct ath_rateioctl_rt));
		FUNC1(127);
	}
	rt = (void *) (buf + sizeof(struct ath_rateioctl_tlv));

	/* Next */
	av = (void *) (buf + sizeof(struct ath_rateioctl_tlv) +
	    sizeof(struct ath_rateioctl_rt));
	if (av->tlv_id != ATH_RATE_TLV_SAMPLENODE) {
		FUNC2(stderr, "unexpected rate control TLV (got 0x%x, "
		    "expected 0x%x\n",
		    av->tlv_id,
		    ATH_RATE_TLV_SAMPLENODE);
		FUNC1(127);
	}
	if (av->tlv_len != sizeof(struct sample_node)) {
		FUNC2(stderr, "unexpected TLV len (got %d bytes, "
		    "expected %d bytes\n",
		    av->tlv_len,
		    (int) sizeof(struct sample_node));
		FUNC1(127);
	}
	sn = (void *) (buf + sizeof(struct ath_rateioctl_tlv) +
	    sizeof(struct ath_rateioctl_rt) +
	    sizeof(struct ath_rateioctl_tlv));

	FUNC0(r, rt, sn);

	return (0);
}