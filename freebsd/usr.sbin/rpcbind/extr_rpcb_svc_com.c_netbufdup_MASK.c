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
struct netbuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 struct netbuf* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct netbuf*) ; 
 scalar_t__ FUNC2 (struct netbuf*,struct netbuf*) ; 

__attribute__((used)) static struct netbuf *
FUNC3(struct netbuf *ap)
{
	struct netbuf  *np;

	if ((np = FUNC0(1, sizeof(struct netbuf))) == NULL)
		return (NULL);
	if (FUNC2(np, ap) == FALSE) {
		FUNC1(np);
		return (NULL);
	}
	return (np);
}