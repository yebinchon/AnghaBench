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
struct sbuf {int dummy; } ;
struct g_consumer {scalar_t__ provider; int /*<<< orphan*/  ace; int /*<<< orphan*/  acw; int /*<<< orphan*/  acr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*,char*,struct g_consumer*,scalar_t__,...) ; 

__attribute__((used)) static void
FUNC1(struct sbuf *sb, struct g_consumer *cp)
{

	FUNC0(sb, "z%p [label=\"r%dw%de%d\"];\n",
	    cp, cp->acr, cp->acw, cp->ace);
	if (cp->provider)
		FUNC0(sb, "z%p -> z%p;\n", cp, cp->provider);
}