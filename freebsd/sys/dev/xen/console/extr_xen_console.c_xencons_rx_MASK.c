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
struct xencons_priv {char* rbuf; int /*<<< orphan*/  rp; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int (* read ) (struct xencons_priv*,char*,int) ;} ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xencons_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xencons_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct xencons_priv*) ; 

__attribute__((used)) static void
FUNC4(struct xencons_priv *cons)
{
	char buf[16];
	int sz;

	FUNC2(cons);
	while ((sz = cons->ops->read(cons, buf, sizeof(buf))) > 0) {
		int i;

		for (i = 0; i < sz; i++)
			cons->rbuf[FUNC0(cons->rp++)] = buf[i];
	}
	FUNC3(cons);
}