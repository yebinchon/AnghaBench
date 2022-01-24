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
struct ucred {int dummy; } ;
struct inpcb {int /*<<< orphan*/  inp_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct ucred*,struct inpcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ucred*,struct inpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inpcb_check_visible ; 

int
FUNC3(struct ucred *cred, struct inpcb *inp)
{
	int error;

	FUNC0(inp);

	FUNC2(inpcb_check_visible, cred, inp,
	    inp->inp_label);
	FUNC1(inpcb_check_visible, error, cred, inp);

	return (error);
}