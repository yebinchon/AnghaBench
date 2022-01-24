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
typedef  int u_int ;
struct nm_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nm_bridge*) ; 
 struct nm_bridge* FUNC1 (int) ; 

struct nm_bridge *
FUNC2(u_int n)
{
	int i;
	struct nm_bridge *b;

	b = FUNC1(sizeof(struct nm_bridge) * n);
	if (b == NULL)
		return NULL;
	for (i = 0; i < n; i++)
		FUNC0(&b[i]);
	return b;
}