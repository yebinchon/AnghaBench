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
struct sbuf {int s_flags; } ;

/* Variables and functions */
 int SBUF_USRFLAGMSK ; 

int
FUNC0(struct sbuf *s)
{

	return (s->s_flags & SBUF_USRFLAGMSK);
}