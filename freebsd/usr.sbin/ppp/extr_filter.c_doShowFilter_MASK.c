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
struct protoent {int /*<<< orphan*/  p_name; } ;
struct prompt {int dummy; } ;
struct filterent {scalar_t__ f_action; int f_proto; int /*<<< orphan*/  timeout; scalar_t__ f_finrst; scalar_t__ f_syn; scalar_t__ f_estab; int /*<<< orphan*/  f_dstport; scalar_t__ f_dstop; int /*<<< orphan*/  f_srcport; scalar_t__ f_srcop; int /*<<< orphan*/  f_dsttype; int /*<<< orphan*/  f_dst; int /*<<< orphan*/  f_srctype; int /*<<< orphan*/  f_src; scalar_t__ f_invert; } ;

/* Variables and functions */
 scalar_t__ A_NONE ; 
 int MAXFILTERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct protoent* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct prompt*,char*,...) ; 

__attribute__((used)) static void
FUNC6(struct filterent *fp, struct prompt *prompt)
{
  struct protoent *pe;
  int n;

  for (n = 0; n < MAXFILTERS; n++, fp++) {
    if (fp->f_action != A_NONE) {
      FUNC5(prompt, "  %2d %s", n, FUNC1(fp->f_action));
      FUNC5(prompt, "%c ", fp->f_invert ? '!' : ' ');

      if (FUNC4(&fp->f_src))
        FUNC5(prompt, "%s ", FUNC0(&fp->f_src, fp->f_srctype));
      else
        FUNC5(prompt, "any ");

      if (FUNC4(&fp->f_dst))
        FUNC5(prompt, "%s ", FUNC0(&fp->f_dst, fp->f_dsttype));
      else
        FUNC5(prompt, "any ");

      if (fp->f_proto) {
        if ((pe = FUNC3(fp->f_proto)) == NULL)
	  FUNC5(prompt, "P:%d", fp->f_proto);
        else
	  FUNC5(prompt, "%s", pe->p_name);

	if (fp->f_srcop)
	  FUNC5(prompt, " src %s %d", FUNC2(fp->f_srcop),
		  fp->f_srcport);
	if (fp->f_dstop)
	  FUNC5(prompt, " dst %s %d", FUNC2(fp->f_dstop),
		  fp->f_dstport);
	if (fp->f_estab)
	  FUNC5(prompt, " estab");
	if (fp->f_syn)
	  FUNC5(prompt, " syn");
	if (fp->f_finrst)
	  FUNC5(prompt, " finrst");
      } else
	FUNC5(prompt, "all");
      if (fp->timeout != 0)
	  FUNC5(prompt, " timeout %u", fp->timeout);
      FUNC5(prompt, "\n");
    }
  }
}