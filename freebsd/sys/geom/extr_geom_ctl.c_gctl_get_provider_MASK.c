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
struct gctl_req {int dummy; } ;
struct g_provider {int dummy; } ;

/* Variables and functions */
 struct g_provider* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,char*,char const*) ; 
 char* FUNC2 (struct gctl_req*,char const*) ; 

struct g_provider *
FUNC3(struct gctl_req *req, char const *arg)
{
	char const *p;
	struct g_provider *pp;

	p = FUNC2(req, arg);
	if (p == NULL)
		return (NULL);
	pp = FUNC0(p);
	if (pp != NULL)
		return (pp);
	FUNC1(req, "Provider not found: \"%s\"", p);
	return (NULL);
}