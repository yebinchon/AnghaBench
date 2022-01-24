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
struct domainset {int /*<<< orphan*/  ds_mask; } ;
struct domainlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct domainset* FUNC1 (struct domainlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct domainset*,int /*<<< orphan*/ ) ; 
 struct domainset* FUNC3 (struct domainset*,struct domainlist*) ; 
 int /*<<< orphan*/  FUNC4 (struct domainset const*,struct domainset*) ; 
 int /*<<< orphan*/  ds_link ; 

__attribute__((used)) static struct domainset *
FUNC5(const struct domainset *pdomain,
    const struct domainset *domain, struct domainlist *freelist)
{
	struct domainset *ndomain;

	ndomain = FUNC1(freelist);
	FUNC2(ndomain, ds_link);

	/*
	 * Initialize the key from the request.
	 */
	FUNC4(domain, ndomain);

	/*
	 * Restrict the key by the parent.
	 */
	FUNC0(&ndomain->ds_mask, &pdomain->ds_mask);

	return FUNC3(ndomain, freelist);
}