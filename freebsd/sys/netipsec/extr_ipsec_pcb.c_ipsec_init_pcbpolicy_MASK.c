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
struct inpcbpolicy {int dummy; } ;
struct inpcb {int /*<<< orphan*/ * inp_sp; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_IPSEC_INPCB ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int) ; 

int
FUNC2(struct inpcb *inp)
{

	FUNC0(inp != NULL, ("null inp"));
	FUNC0(inp->inp_sp == NULL, ("inp_sp already initialized"));

	inp->inp_sp = FUNC1(sizeof(struct inpcbpolicy), M_IPSEC_INPCB,
	    M_NOWAIT | M_ZERO);
	if (inp->inp_sp == NULL)
		return (ENOBUFS);
	return (0);
}