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
struct jobspec_hdr {int dummy; } ;
struct jobspec {struct jobspec* matcheduser; struct jobspec* fmtoutput; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jobspec_hdr*) ; 
 struct jobspec* FUNC1 (struct jobspec_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct jobspec_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct jobspec*) ; 
 int /*<<< orphan*/  nextjs ; 

void
FUNC4(struct jobspec_hdr *js_hdr)
{
	struct jobspec *jsinf;

	while (!FUNC0(js_hdr)) {
		jsinf = FUNC1(js_hdr);
		FUNC2(js_hdr, nextjs);
		if (jsinf->fmtoutput)
			FUNC3(jsinf->fmtoutput);
		if (jsinf->matcheduser)
			FUNC3(jsinf->matcheduser);
		FUNC3(jsinf);
	}
}