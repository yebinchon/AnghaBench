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
struct credential {scalar_t__ path; scalar_t__ port; scalar_t__ host; scalar_t__ protocol; scalar_t__ username; } ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 int /*<<< orphan*/  g_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_str_equal ; 
 int /*<<< orphan*/  g_str_hash ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 

__attribute__((used)) static GHashTable *FUNC4(struct credential *c)
{
	GHashTable *al = FUNC1(g_str_hash, g_str_equal, NULL, g_free);

	if (c->username)
		FUNC0(al, "user", FUNC2(c->username));
	if (c->protocol)
		FUNC0(al, "protocol", FUNC2(c->protocol));
	if (c->host)
		FUNC0(al, "server", FUNC2(c->host));
	if (c->port)
		FUNC0(al, "port", FUNC3("%hu", c->port));
	if (c->path)
		FUNC0(al, "object", FUNC2(c->path));

	return al;
}