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
typedef  int /*<<< orphan*/  u_char ;
struct isa_config {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  pnp_parse_desc ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct isa_config*,int,int /*<<< orphan*/ ) ; 

u_char
*FUNC1(device_t dev, u_char *resources, int len,
		     struct isa_config *config, int ldn)
{

	return FUNC0(dev, resources, len, config, ldn,
				  pnp_parse_desc);
}