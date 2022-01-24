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
struct m_tag {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct label*) ; 
 int /*<<< orphan*/  mbuf_destroy_label ; 

void
FUNC2(struct m_tag *tag)
{
	struct label *label;

	label = (struct label *)(tag+1);

	FUNC0(mbuf_destroy_label, label);
	FUNC1(label);
}