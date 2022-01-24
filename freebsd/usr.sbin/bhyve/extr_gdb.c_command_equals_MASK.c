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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 

__attribute__((used)) static bool
FUNC2(const uint8_t *data, size_t len, const char *cmd)
{

	if (FUNC1(cmd) > len)
		return (false);
	return (FUNC0(data, cmd, FUNC1(cmd)) == 0);
}