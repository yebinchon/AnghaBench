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
struct label {int /*<<< orphan*/  l_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (struct label*,int) ; 

void
FUNC1(struct label *label)
{

	FUNC0(label, sizeof(*label));
	label->l_flags = MAC_FLAG_INITIALIZED;
}