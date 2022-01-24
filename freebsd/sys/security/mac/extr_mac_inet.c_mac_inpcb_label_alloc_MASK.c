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
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct label*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct label*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct label*) ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  inpcb_destroy_label ; 
 int /*<<< orphan*/  inpcb_init_label ; 
 struct label* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct label*) ; 

__attribute__((used)) static struct label *
FUNC5(int flag)
{
	struct label *label;
	int error;

	label = FUNC3(flag);
	if (label == NULL)
		return (NULL);
	if (flag & M_WAITOK)
		FUNC0(inpcb_init_label, label, flag);
	else
		FUNC1(inpcb_init_label, label, flag);
	if (error) {
		FUNC2(inpcb_destroy_label, label);
		FUNC4(label);
		return (NULL);
	}
	return (label);
}