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
typedef  int uint64_t ;
struct sq_hdr_subdesc {scalar_t__ subdesc_type; int subdesc_cnt; } ;
struct snd_queue {int head; struct snd_buff* snd_buff; int /*<<< orphan*/  snd_buff_dmat; } ;
struct snd_buff {int /*<<< orphan*/ * mbuf; int /*<<< orphan*/  dmap; } ;
struct nicvf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_queue*) ; 
 int /*<<< orphan*/  NIC_QSET_SQ_0_7_HEAD ; 
 scalar_t__ SQ_DESC_TYPE_HEADER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_queue*,int) ; 
 int FUNC6 (struct nicvf*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct nicvf *nic, struct snd_queue *sq, int qidx)
{
	uint64_t head;
	struct snd_buff *snd_buff;
	struct sq_hdr_subdesc *hdr;

	FUNC1(sq);
	head = FUNC6(nic, NIC_QSET_SQ_0_7_HEAD, qidx) >> 4;
	while (sq->head != head) {
		hdr = (struct sq_hdr_subdesc *)FUNC0(sq, sq->head);
		if (hdr->subdesc_type != SQ_DESC_TYPE_HEADER) {
			FUNC5(sq, 1);
			continue;
		}
		snd_buff = &sq->snd_buff[sq->head];
		if (snd_buff->mbuf != NULL) {
			FUNC3(sq->snd_buff_dmat, snd_buff->dmap);
			FUNC4(snd_buff->mbuf);
			sq->snd_buff[sq->head].mbuf = NULL;
		}
		FUNC5(sq, hdr->subdesc_cnt + 1);
	}
	FUNC2(sq);
}