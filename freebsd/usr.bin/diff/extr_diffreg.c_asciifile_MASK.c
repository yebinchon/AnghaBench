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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 size_t FUNC0 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned char*,char,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(FILE *f)
{
	unsigned char buf[BUFSIZ];
	size_t cnt;

	if (f == NULL)
		return (1);

	FUNC2(f);
	cnt = FUNC0(buf, 1, sizeof(buf), f);
	return (FUNC1(buf, '\0', cnt) == NULL);
}