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
typedef  int u8 ;
struct ecore_tunn_update_udp_port {int /*<<< orphan*/  port; scalar_t__ b_update_port; } ;
struct ecore_tunn_update_type {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,struct ecore_tunn_update_type*) ; 

__attribute__((used)) static void
FUNC2(u8 *p_tunn_cls,
			      struct ecore_tunn_update_type *tun_type,
			      u8 *p_update_port, __le16 *p_port,
			      struct ecore_tunn_update_udp_port *p_udp_port)
{
	FUNC1(p_tunn_cls, tun_type);
	if (p_udp_port->b_update_port) {
		*p_update_port = 1;
		*p_port = FUNC0(p_udp_port->port);
	}
}