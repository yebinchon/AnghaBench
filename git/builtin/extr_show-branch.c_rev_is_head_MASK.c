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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 

__attribute__((used)) static int FUNC3(const char *head, const char *name,
		       unsigned char *head_sha1, unsigned char *sha1)
{
	if (!head || (head_sha1 && sha1 && !FUNC0(head_sha1, sha1)))
		return 0;
	FUNC1(head, "refs/heads/", &head);
	if (!FUNC1(name, "refs/heads/", &name))
		FUNC1(name, "heads/", &name);
	return !FUNC2(head, name);
}