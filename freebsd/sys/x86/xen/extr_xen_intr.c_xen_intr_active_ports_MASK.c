#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
typedef  size_t u_int ;
struct xen_intr_pcpu_data {int* evtchn_enabled; } ;
struct TYPE_3__ {int* evtchn_pending; int* evtchn_mask; } ;
typedef  TYPE_1__ shared_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline u_long
FUNC1(struct xen_intr_pcpu_data *pcpu, shared_info_t *sh,
    u_int idx)
{

	FUNC0(sizeof(sh->evtchn_mask[0]) == sizeof(sh->evtchn_pending[0]));
	FUNC0(sizeof(sh->evtchn_mask[0]) == sizeof(pcpu->evtchn_enabled[0]));
	FUNC0(sizeof(sh->evtchn_mask) == sizeof(sh->evtchn_pending));
	FUNC0(sizeof(sh->evtchn_mask) == sizeof(pcpu->evtchn_enabled));
	return (sh->evtchn_pending[idx]
	      & ~sh->evtchn_mask[idx]
	      & pcpu->evtchn_enabled[idx]);
}