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
typedef  int /*<<< orphan*/  uint32_t ;
struct sctphdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  initiate_tag; } ;
struct sctp_init_chunk {TYPE_1__ init; } ;
struct sctp_chunkhdr {scalar_t__ chunk_type; int /*<<< orphan*/  chunk_length; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ SCTP_ABORT_ASSOCIATION ; 
 scalar_t__ SCTP_INITIATION ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mbuf*,int,int,int /*<<< orphan*/ *) ; 

int
FUNC4(struct mbuf *m, int iphlen, uint32_t *vtagfill)
{
	struct sctp_chunkhdr *ch;
	struct sctp_init_chunk *init_chk, chunk_buf;
	int offset;
	unsigned int chk_length;

	offset = iphlen + sizeof(struct sctphdr);
	ch = (struct sctp_chunkhdr *)FUNC3(m, offset, sizeof(*ch),
	    (uint8_t *)&chunk_buf);
	while (ch != NULL) {
		chk_length = FUNC2(ch->chunk_length);
		if (chk_length < sizeof(*ch)) {
			/* packet is probably corrupt */
			break;
		}
		/* we seem to be ok, is it an abort? */
		if (ch->chunk_type == SCTP_ABORT_ASSOCIATION) {
			/* yep, tell them */
			return (1);
		}
		if (ch->chunk_type == SCTP_INITIATION) {
			/* need to update the Vtag */
			init_chk = (struct sctp_init_chunk *)FUNC3(m,
			    offset, sizeof(*init_chk), (uint8_t *)&chunk_buf);
			if (init_chk != NULL) {
				*vtagfill = FUNC1(init_chk->init.initiate_tag);
			}
		}
		/* Nope, move to the next chunk */
		offset += FUNC0(chk_length);
		ch = (struct sctp_chunkhdr *)FUNC3(m, offset,
		    sizeof(*ch), (uint8_t *)&chunk_buf);
	}
	return (0);
}