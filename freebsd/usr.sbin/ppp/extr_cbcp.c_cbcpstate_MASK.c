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
 char const* FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char const** cbcpname ; 

__attribute__((used)) static const char *
FUNC1(unsigned s)
{
  if (s < sizeof cbcpname / sizeof cbcpname[0])
    return cbcpname[s];
  return FUNC0(s, NULL, 0);
}