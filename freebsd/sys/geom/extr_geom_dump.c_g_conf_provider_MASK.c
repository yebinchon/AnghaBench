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
typedef  struct g_provider* uintmax_t ;
struct sbuf {int dummy; } ;
struct g_provider {int flags; struct g_provider* geom; int /*<<< orphan*/  (* dumpconf ) (struct sbuf*,char*,struct g_provider*,int /*<<< orphan*/ *,struct g_provider*) ;scalar_t__ stripeoffset; scalar_t__ stripesize; struct g_provider* sectorsize; scalar_t__ mediasize; int /*<<< orphan*/  name; int /*<<< orphan*/  ace; int /*<<< orphan*/  acw; int /*<<< orphan*/  acr; } ;
typedef  struct g_provider* intmax_t ;

/* Variables and functions */
 int G_GEOM_WITHER ; 
 int G_PF_WITHER ; 
 int /*<<< orphan*/  FUNC0 (struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*,struct g_provider*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,char*,struct g_provider*,int /*<<< orphan*/ *,struct g_provider*) ; 

__attribute__((used)) static void
FUNC4(struct sbuf *sb, struct g_provider *pp)
{

	FUNC2(sb, "\t<provider id=\"%p\">\n", pp);
	FUNC2(sb, "\t  <geom ref=\"%p\"/>\n", pp->geom);
	FUNC2(sb, "\t  <mode>r%dw%de%d</mode>\n",
	    pp->acr, pp->acw, pp->ace);
	FUNC1(sb, "\t  <name>");
	FUNC0(sb, pp->name);
	FUNC1(sb, "</name>\n");
	FUNC2(sb, "\t  <mediasize>%jd</mediasize>\n",
	    (intmax_t)pp->mediasize);
	FUNC2(sb, "\t  <sectorsize>%u</sectorsize>\n", pp->sectorsize);
	FUNC2(sb, "\t  <stripesize>%ju</stripesize>\n", (uintmax_t)pp->stripesize);
	FUNC2(sb, "\t  <stripeoffset>%ju</stripeoffset>\n", (uintmax_t)pp->stripeoffset);
	if (pp->flags & G_PF_WITHER)
		FUNC1(sb, "\t  <wither/>\n");
	else if (pp->geom->flags & G_GEOM_WITHER)
		;
	else if (pp->geom->dumpconf != NULL) {
		FUNC1(sb, "\t  <config>\n");
		pp->geom->dumpconf(sb, "\t    ", pp->geom, NULL, pp);
		FUNC1(sb, "\t  </config>\n");
	}
	FUNC1(sb, "\t</provider>\n");
}