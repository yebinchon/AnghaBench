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
typedef  scalar_t__ u16 ;
struct mlx4_en_tx_ring {int /*<<< orphan*/  inline_thold; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MIN_PKT_LEN ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static u16
FUNC2(struct mlx4_en_tx_ring *ring, struct mbuf *mb)
{
	u16 retval;

	/* only copy from first fragment, if possible */
	retval = FUNC0(ring->inline_thold, mb->m_len);

	/* check for too little data */
	if (FUNC1(retval < MIN_PKT_LEN))
		retval = FUNC0(ring->inline_thold, mb->m_pkthdr.len);
	return (retval);
}