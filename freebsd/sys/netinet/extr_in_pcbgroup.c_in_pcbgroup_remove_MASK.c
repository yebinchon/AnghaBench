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
struct inpcbgroup {int dummy; } ;
struct inpcb {int inp_flags2; struct inpcbgroup* inp_pcbgroup; int /*<<< orphan*/  inp_pcbinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcbgroup*) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcbgroup*) ; 
 int INP_PCBGROUPWILD ; 
 int /*<<< orphan*/  FUNC3 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inpcb*) ; 
 int /*<<< orphan*/  inp_pcbgrouphash ; 

void
FUNC6(struct inpcb *inp)
{
	struct inpcbgroup *pcbgroup;

	FUNC3(inp);

	if (!FUNC4(inp->inp_pcbinfo))
		return;

	if (inp->inp_flags2 & INP_PCBGROUPWILD)
		FUNC5(inp);

	pcbgroup = inp->inp_pcbgroup;
	if (pcbgroup != NULL) {
		FUNC1(pcbgroup);
		FUNC0(inp, inp_pcbgrouphash);
		inp->inp_pcbgroup = NULL;
		FUNC2(pcbgroup);
	}
}