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
typedef  void* u8 ;
typedef  int u16 ;
struct ecore_tunn_update_type {int b_mode_enabled; void* tun_cls; } ;
typedef  enum ecore_tunn_mode { ____Placeholder_ecore_tunn_mode } ecore_tunn_mode ;

/* Variables and functions */

__attribute__((used)) static void
FUNC0(struct ecore_tunn_update_type *p_tun,
			     u16 feature_mask, u8 tunn_mode, u8 tunn_cls,
			     enum ecore_tunn_mode val)
{
	if (feature_mask & (1 << val)) {
		p_tun->b_mode_enabled = tunn_mode;
		p_tun->tun_cls = tunn_cls;
	} else {
		p_tun->b_mode_enabled = false;
	}
}