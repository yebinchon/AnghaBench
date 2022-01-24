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
typedef  enum protocol { ____Placeholder_protocol } protocol ;

/* Variables and functions */
 int PROTO_FILE ; 
 int PROTO_GIT ; 
 int PROTO_SSH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static enum protocol FUNC3(const char *name)
{
	if (!FUNC2(name, "ssh"))
		return PROTO_SSH;
	if (!FUNC2(name, "git"))
		return PROTO_GIT;
	if (!FUNC2(name, "git+ssh")) /* deprecated - do not use */
		return PROTO_SSH;
	if (!FUNC2(name, "ssh+git")) /* deprecated - do not use */
		return PROTO_SSH;
	if (!FUNC2(name, "file"))
		return PROTO_FILE;
	FUNC1(FUNC0("protocol '%s' is not supported"), name);
}