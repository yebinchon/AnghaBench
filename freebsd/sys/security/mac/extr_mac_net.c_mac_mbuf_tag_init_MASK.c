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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct label*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct label*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct label*) ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  FUNC3 (struct label*) ; 
 int /*<<< orphan*/  FUNC4 (struct label*) ; 
 int /*<<< orphan*/  mbuf_destroy_label ; 
 int /*<<< orphan*/  mbuf_init_label ; 

int
FUNC5(struct m_tag *tag, int flag)
{
	struct label *label;
	int error;

	label = (struct label *) (tag + 1);
	FUNC4(label);

	if (flag & M_WAITOK)
		FUNC0(mbuf_init_label, label, flag);
	else
		FUNC1(mbuf_init_label, label, flag);
	if (error) {
		FUNC2(mbuf_destroy_label, label);
		FUNC3(label);
	}
	return (error);
}