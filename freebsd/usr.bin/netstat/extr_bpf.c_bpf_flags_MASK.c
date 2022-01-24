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
struct xbpf_d {scalar_t__ bd_direction; scalar_t__ bd_locked; scalar_t__ bd_async; scalar_t__ bd_feedback; scalar_t__ bd_hdrcmplt; scalar_t__ bd_immediate; scalar_t__ bd_promisc; } ;

/* Variables and functions */
 scalar_t__ BPF_D_IN ; 
 scalar_t__ BPF_D_OUT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(struct xbpf_d *bd, char *flagbuf)
{

	*flagbuf++ = bd->bd_promisc ? 'p' : '-';
	*flagbuf++ = bd->bd_immediate ? 'i' : '-';
	*flagbuf++ = bd->bd_hdrcmplt ? '-' : 'f';
	*flagbuf++ = (bd->bd_direction == BPF_D_IN) ? '-' :
	    ((bd->bd_direction == BPF_D_OUT) ? 'o' : 's');
	*flagbuf++ = bd->bd_feedback ? 'b' : '-';
	*flagbuf++ = bd->bd_async ? 'a' : '-';
	*flagbuf++ = bd->bd_locked ? 'l' : '-';
	*flagbuf++ = '\0';

	if (bd->bd_promisc)
		FUNC0("{e:promiscuous/}");
	if (bd->bd_immediate)
		FUNC0("{e:immediate/}");
	if (bd->bd_hdrcmplt)
		FUNC0("{e:header-complete/}");
	FUNC0("{e:direction}", (bd->bd_direction == BPF_D_IN) ? "input" :
	    (bd->bd_direction == BPF_D_OUT) ? "output" : "bidirectional");
	if (bd->bd_feedback)
		FUNC0("{e:feedback/}");
	if (bd->bd_async)
		FUNC0("{e:async/}");
	if (bd->bd_locked)
		FUNC0("{e:locked/}");
}