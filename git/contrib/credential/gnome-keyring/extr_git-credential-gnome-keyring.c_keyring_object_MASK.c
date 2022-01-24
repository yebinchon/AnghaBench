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
struct credential {int /*<<< orphan*/  path; int /*<<< orphan*/  host; scalar_t__ port; } ;

/* Variables and functions */
 char* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static char *FUNC1(struct credential *c)
{
	if (!c->path)
		return NULL;

	if (c->port)
		return FUNC0("%s:%hd/%s", c->host, c->port, c->path);

	return FUNC0("%s/%s", c->host, c->path);
}