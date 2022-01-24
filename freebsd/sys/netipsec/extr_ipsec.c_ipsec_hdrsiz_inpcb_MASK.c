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
struct secpolicyindex {int dummy; } ;
struct secpolicy {int dummy; } ;
struct inpcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPSEC_DIR_OUTBOUND ; 
 struct secpolicy* FUNC0 (struct inpcb*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct secpolicy*) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*,struct secpolicyindex*,int /*<<< orphan*/ ) ; 
 struct secpolicy* FUNC3 (struct secpolicyindex*,int /*<<< orphan*/ ) ; 
 struct secpolicy* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct secpolicy**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

size_t
FUNC7(struct inpcb *inp)
{
	struct secpolicyindex spidx;
	struct secpolicy *sp;
	size_t sz;

	sp = FUNC0(inp, IPSEC_DIR_OUTBOUND);
	if (sp == NULL && FUNC6(IPSEC_DIR_OUTBOUND)) {
		FUNC2(inp, &spidx, IPSEC_DIR_OUTBOUND);
		sp = FUNC3(&spidx, IPSEC_DIR_OUTBOUND);
	}
	if (sp == NULL)
		sp = FUNC4();
	sz = FUNC1(sp);
	FUNC5(&sp);
	return (sz);
}