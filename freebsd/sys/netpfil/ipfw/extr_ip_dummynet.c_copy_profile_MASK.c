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
struct dn_profile {int dummy; } ;
struct dn_id {int len; } ;
struct copy_args {int end; int* start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int ED_MAX_SAMPLES_NO ; 
 int /*<<< orphan*/  FUNC1 (int,struct dn_profile*,int) ; 

__attribute__((used)) static int
FUNC2(struct copy_args *a, struct dn_profile *p)
{
	int have = a->end - *a->start;
	/* XXX here we check for max length */
	int profile_len = sizeof(struct dn_profile) - 
		ED_MAX_SAMPLES_NO*sizeof(int);

	if (p == NULL)
		return 0;
	if (have < profile_len) {
		FUNC0("error have %d need %d", have, profile_len);
		return 1;
	}
	FUNC1(*a->start, p, profile_len);
	((struct dn_id *)(*a->start))->len = profile_len;
	*a->start += profile_len;
	return 0;
}