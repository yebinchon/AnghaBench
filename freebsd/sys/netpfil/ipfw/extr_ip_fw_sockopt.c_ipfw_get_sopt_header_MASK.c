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
struct sockopt_data {scalar_t__ kavail; scalar_t__ koff; scalar_t__ kbuf; } ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct sockopt_data*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

caddr_t
FUNC2(struct sockopt_data *sd, size_t needed)
{
	caddr_t addr;

	if ((addr = FUNC0(sd, needed)) == NULL)
		return (NULL);

	if (sd->kavail > 0)
		FUNC1(sd->kbuf + sd->koff, 0, sd->kavail);
	
	return (addr);
}