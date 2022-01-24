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
struct inpcb {int /*<<< orphan*/  inp_cred; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 scalar_t__ FUNC1 (struct ucred*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ucred*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ucred*,struct inpcb*) ; 
 int FUNC4 (struct ucred*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct ucred *cred, struct inpcb *inp)
{
	int error;

	error = FUNC4(cred, inp->inp_cred);
	if (error)
		return (ENOENT);
#ifdef MAC
	INP_LOCK_ASSERT(inp);
	error = mac_inpcb_check_visible(cred, inp);
	if (error)
		return (error);
#endif
	if (FUNC2(cred, inp->inp_cred))
		return (ENOENT);
	if (FUNC1(cred, inp->inp_cred))
		return (ENOENT);

	return (0);
}