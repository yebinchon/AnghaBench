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
struct credential {char* path; int /*<<< orphan*/  host; int /*<<< orphan*/  protocol; scalar_t__ port; } ;

/* Variables and functions */
 char* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static char *FUNC1(struct credential *c)
{
	if (c->port)
		return FUNC0("Git: %s://%s:%hu/%s",
					c->protocol, c->host, c->port, c->path ? c->path : "");
	else
		return FUNC0("Git: %s://%s/%s",
					c->protocol, c->host, c->path ? c->path : "");
}