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
typedef  int /*<<< orphan*/  u_int ;
struct aggent {uintptr_t ag_ostart; uintptr_t ag_oend; int /*<<< orphan*/  ag_nsamples; int /*<<< orphan*/ * ag_name; } ;

/* Variables and functions */
 struct aggent* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct aggent*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

__attribute__((used)) static struct aggent *
FUNC3(const char *name, u_int nsamples, uintptr_t start, uintptr_t end)
{
	struct aggent *agg;

	agg = FUNC0(1, sizeof(struct aggent));
	if (agg == NULL)
		return (NULL);
	agg->ag_name = FUNC2(name);
	if (agg->ag_name == NULL) {
		FUNC1(agg);
		return (NULL);
	}
	agg->ag_nsamples = nsamples;
	agg->ag_ostart = start;
	agg->ag_oend = end;
	return (agg);
}