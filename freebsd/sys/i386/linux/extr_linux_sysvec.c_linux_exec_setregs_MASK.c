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
typedef  int /*<<< orphan*/  u_long ;
struct thread {struct pcb* td_pcb; } ;
struct pcb {int /*<<< orphan*/  pcb_initial_npxcw; scalar_t__ pcb_gs; } ;
struct image_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __LINUX_NPXCW__ ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,struct image_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct thread *td, struct image_params *imgp, u_long stack)
{
	struct pcb *pcb = td->td_pcb;

	FUNC0(td, imgp, stack);

	/* Linux sets %gs to 0, we default to _udatasel. */
	pcb->pcb_gs = 0;
	FUNC1(0);

	pcb->pcb_initial_npxcw = __LINUX_NPXCW__;
}