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
struct ktr_csw_old {scalar_t__ user; scalar_t__ out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 

void
FUNC1(struct ktr_csw_old *cs)
{
	FUNC0("%s %s\n", cs->out ? "stop" : "resume",
		cs->user ? "user" : "kernel");
}