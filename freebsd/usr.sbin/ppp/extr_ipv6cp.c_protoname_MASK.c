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

__attribute__((used)) static const char *
FUNC1(unsigned proto)
{
  static const char *cftypes[] = { "IFACEID", "COMPPROTO" };

  if (proto > 0 && proto <= sizeof cftypes / sizeof *cftypes)
    return cftypes[proto - 1];

  return FUNC0(proto, NULL, 0);
}