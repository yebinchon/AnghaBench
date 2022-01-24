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
struct xencons_priv {scalar_t__ wp; scalar_t__ wc; int* wbuf; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ WBUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct xencons_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct xencons_priv*,int) ; 
 int FUNC3 (struct xencons_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct xencons_priv*) ; 

__attribute__((used)) static bool
FUNC5(struct xencons_priv *cons, int c, bool force_flush)
{

	FUNC1(cons);
	if ((cons->wp - cons->wc) < WBUF_SIZE)
		cons->wbuf[FUNC0(cons->wp++)] = c;
	FUNC4(cons);

	FUNC2(cons, force_flush);

	return (FUNC3(cons));
}