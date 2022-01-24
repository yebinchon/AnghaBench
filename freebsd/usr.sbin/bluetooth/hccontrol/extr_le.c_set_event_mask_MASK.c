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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  semc ;
typedef  int /*<<< orphan*/  rp ;
typedef  int /*<<< orphan*/  ng_hci_set_event_mask_rp ;
struct TYPE_2__ {int* event_mask; } ;
typedef  TYPE_1__ ng_hci_set_event_mask_cp ;

/* Variables and functions */
 int NG_HCI_EVENT_MASK_SIZE ; 
 int /*<<< orphan*/  NG_HCI_OCF_SET_EVENT_MASK ; 
 int /*<<< orphan*/  NG_HCI_OGF_HC_BASEBAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,void*,int,void*,int*) ; 

__attribute__((used)) static int
FUNC2(int s, uint64_t mask)
{
	ng_hci_set_event_mask_cp semc;
	ng_hci_set_event_mask_rp rp;  
	int i, n, e;
	
	n = sizeof(rp);
	
	for (i=0; i < NG_HCI_EVENT_MASK_SIZE; i++) {
		semc.event_mask[i] = mask&0xff;
		mask >>= 8;
	}
	e = FUNC1(s, FUNC0(NG_HCI_OGF_HC_BASEBAND,
			NG_HCI_OCF_SET_EVENT_MASK),
			(void *)&semc, sizeof(semc), (void *)&rp, &n);
	
	return 0;
}