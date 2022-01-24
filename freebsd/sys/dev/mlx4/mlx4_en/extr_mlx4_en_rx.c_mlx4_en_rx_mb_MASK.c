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
struct mlx4_en_rx_ring {int /*<<< orphan*/  dma_tag; } ;
struct mlx4_en_rx_mbuf {struct mbuf* mbuf; int /*<<< orphan*/  dma_map; } ;
struct mlx4_en_rx_desc {int dummy; } ;
struct mlx4_en_priv {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {int m_len; struct mbuf* m_next; TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int MHLEN ; 
 int MLX4_NET_IP_ALIGN ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  caddr_t ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 struct mbuf* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mlx4_en_rx_ring*,struct mlx4_en_rx_desc*,struct mlx4_en_rx_mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct mbuf *
FUNC8(struct mlx4_en_priv *priv, struct mlx4_en_rx_ring *ring,
    struct mlx4_en_rx_desc *rx_desc, struct mlx4_en_rx_mbuf *mb_list,
    int length)
{
#if (MLX4_EN_MAX_RX_SEGS != 1)
	struct mbuf *mb_head;
#endif
	struct mbuf *mb;

	/* optimise reception of small packets */
	if (length <= (MHLEN - MLX4_NET_IP_ALIGN) &&
	    (mb = FUNC4(M_NOWAIT, MT_DATA)) != NULL) {

		/* set packet length */
		mb->m_pkthdr.len = mb->m_len = length;

		/* make sure IP header gets aligned */
		mb->m_data += MLX4_NET_IP_ALIGN;

		FUNC1(ring->dma_tag, mb_list->dma_map,
		    BUS_DMASYNC_POSTREAD);

		FUNC0(FUNC6(mb_list->mbuf, caddr_t), FUNC6(mb, caddr_t), length);

		return (mb);
	}

	/* get mbuf */
	mb = mb_list->mbuf;

	/* collect used fragment while atomically replacing it */
	if (FUNC5(ring, rx_desc, mb_list))
		return (NULL);

	/* range check hardware computed value */
	if (FUNC7(length > mb->m_pkthdr.len))
		length = mb->m_pkthdr.len;

#if (MLX4_EN_MAX_RX_SEGS == 1)
	/* update total packet length in packet header */
	mb->m_len = mb->m_pkthdr.len = length;
#else
	mb->m_pkthdr.len = length;
	for (mb_head = mb; mb != NULL; mb = mb->m_next) {
		if (mb->m_len > length)
			mb->m_len = length;
		length -= mb->m_len;
		if (FUNC2(length == 0)) {
			if (FUNC2(mb->m_next != NULL)) {
				/* trim off empty mbufs */
				FUNC3(mb->m_next);
				mb->m_next = NULL;
			}
			break;
		}
	}
	/* rewind to first mbuf in chain */
	mb = mb_head;
#endif
	return (mb);
}