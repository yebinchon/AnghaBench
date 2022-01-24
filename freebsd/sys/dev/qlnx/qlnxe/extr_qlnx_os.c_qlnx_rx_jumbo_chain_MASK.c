#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct sw_rx_data {int /*<<< orphan*/  map; struct mbuf* data; } ;
struct qlnx_rx_queue {int sw_rx_cons; scalar_t__ rx_buf_size; int /*<<< orphan*/  rx_bd_ring; struct sw_rx_data* sw_rx_ring; } ;
struct qlnx_fastpath {int /*<<< orphan*/  err_rx_alloc_errors; int /*<<< orphan*/  err_rx_mp_null; struct qlnx_rx_queue* rxq; } ;
struct mbuf {struct mbuf* m_next; scalar_t__ m_len; int /*<<< orphan*/  m_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx_tag; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,struct qlnx_rx_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlnx_rx_queue*) ; 

__attribute__((used)) static int
FUNC6(qlnx_host_t *ha, struct qlnx_fastpath *fp,
	struct mbuf *mp_head, uint16_t len)
{
	struct mbuf		*mp, *mpf, *mpl;
	struct sw_rx_data	*sw_rx_data;
	struct qlnx_rx_queue	*rxq;
	uint16_t 		len_in_buffer;

	rxq = fp->rxq;
	mpf = mpl = mp = NULL;

	while (len) {

        	rxq->sw_rx_cons  = (rxq->sw_rx_cons + 1) & (RX_RING_SIZE - 1);

                sw_rx_data = &rxq->sw_rx_ring[rxq->sw_rx_cons];
                mp = sw_rx_data->data;

		if (mp == NULL) {
                	FUNC0(ha, "mp = NULL\n");
			fp->err_rx_mp_null++;
        		rxq->sw_rx_cons  =
				(rxq->sw_rx_cons + 1) & (RX_RING_SIZE - 1);

			if (mpf != NULL)
				FUNC3(mpf);

			return (-1);
		}
		FUNC1(ha->rx_tag, sw_rx_data->map,
			BUS_DMASYNC_POSTREAD);

                if (FUNC4(ha, rxq) != 0) {

                        FUNC0(ha, "New buffer allocation failed, dropping"
				" incoming packet and reusing its buffer\n");

                        FUNC5(rxq);
                        fp->err_rx_alloc_errors++;

			if (mpf != NULL)
				FUNC3(mpf);

			return (-1);
		}
                FUNC2(&rxq->rx_bd_ring);

		if (len > rxq->rx_buf_size)
			len_in_buffer = rxq->rx_buf_size;
		else
			len_in_buffer = len;

		len = len - len_in_buffer;

		mp->m_flags &= ~M_PKTHDR;
		mp->m_next = NULL;
		mp->m_len = len_in_buffer;

		if (mpf == NULL)
			mpf = mpl = mp;
		else {
			mpl->m_next = mp;
			mpl = mp;
		}
	}

	if (mpf != NULL)
		mp_head->m_next = mpf;

	return (0);
}