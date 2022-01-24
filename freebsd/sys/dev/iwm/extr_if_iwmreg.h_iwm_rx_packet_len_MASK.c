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
typedef  int uint32_t ;
struct iwm_rx_packet {int /*<<< orphan*/  len_n_flags; } ;

/* Variables and functions */
 int IWM_FH_RSCSR_FRAME_SIZE_MSK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint32_t
FUNC1(const struct iwm_rx_packet *pkt)
{

	return FUNC0(pkt->len_n_flags) & IWM_FH_RSCSR_FRAME_SIZE_MSK;
}