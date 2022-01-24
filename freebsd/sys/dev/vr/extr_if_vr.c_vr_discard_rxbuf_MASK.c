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
typedef  int /*<<< orphan*/  uint64_t ;
struct vr_rxdesc {struct vr_desc* desc; } ;
struct vr_desc {void* vr_status; void* vr_ctl; } ;

/* Variables and functions */
 int MCLBYTES ; 
 int VR_RXCTL ; 
 int VR_RXSTAT_OWN ; 
 void* FUNC0 (int) ; 

__attribute__((used)) static __inline void
FUNC1(struct vr_rxdesc *rxd)
{
	struct vr_desc	*desc;

	desc = rxd->desc;
	desc->vr_ctl = FUNC0(VR_RXCTL | (MCLBYTES - sizeof(uint64_t)));
	desc->vr_status = FUNC0(VR_RXSTAT_OWN);
}