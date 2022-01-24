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
struct ib_gid_attr {int /*<<< orphan*/  gid_type; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (char*,char*,char*) ; 

__attribute__((used)) static size_t FUNC2(struct ib_gid_attr *gid_attr, char *buf)
{
	return FUNC1(buf, "%s\n", FUNC0(gid_attr->gid_type));
}