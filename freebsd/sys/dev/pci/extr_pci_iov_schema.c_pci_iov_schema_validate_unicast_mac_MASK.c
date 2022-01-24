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
struct config_type_validator {int dummy; } ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int EINVAL ; 
 size_t ETHER_ADDR_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,char const*,size_t*) ; 

__attribute__((used)) static int
FUNC3(
   const struct config_type_validator * validator,
   const nvlist_t *config, const char *name)
{
	const uint8_t *mac;
	size_t size;

	if (!FUNC1(config, name))
		return (EINVAL);

	mac = FUNC2(config, name, &size);

	if (size != ETHER_ADDR_LEN)
		return (EINVAL);

	if (FUNC0(mac))
		return (EINVAL);

	return (0);
}