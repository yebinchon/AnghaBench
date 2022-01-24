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
struct node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct node*,struct node*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct node*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(struct node *n1, struct node *n2, int in)
{
	int i;

	i = FUNC0(n1, n2, in);
	if (i) {
		FUNC3("1>");
		FUNC1(in);
		FUNC2(n1);
		FUNC3("2>");
		FUNC1(in);
		FUNC2(n2);
	}
	return (i);
}