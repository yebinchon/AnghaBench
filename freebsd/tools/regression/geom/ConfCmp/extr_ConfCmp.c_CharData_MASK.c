#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mytree {TYPE_1__* cur; scalar_t__ ignore; } ;
typedef  char XML_Char ;
struct TYPE_2__ {int /*<<< orphan*/  cont; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC2(void *userData , const XML_Char *s , int len)
{
	struct mytree *mt;
	const char *b, *e;

	mt = userData;
	if (mt->ignore)
		return;
	b = s;
	e = s + len - 1;
	while (FUNC0(*b) && b < e)
		b++;
	while (FUNC0(*e) && e > b)
		e--;
	if (e != b || *b)
		FUNC1(mt->cur->cont, b, e - b + 1);
}