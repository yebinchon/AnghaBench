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
typedef  scalar_t__ (* pnp_scan_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct isa_config*,int) ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ PNP_TAG_END ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct isa_config*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct isa_config*,int) ; 

u_char
*FUNC6(device_t dev, u_char *resources, int len,
		    struct isa_config *config, int ldn, pnp_scan_cb *cb)
{
	u_char *p;
	u_char tag;
	int l;

	p = resources;
	while (len > 0) {
		tag = *p++;
		len--;
		if (FUNC1(tag) == 0) {
			/* small resource */
			l = FUNC2(tag);
			if (len < l)
				break;
			if ((*cb)(dev, tag, p, l, config, ldn))
				return (p + l);
			if (FUNC3(tag) == PNP_TAG_END)
				return (p + l);
		} else {
			/* large resource */
			if (len < 2)
				break;
			l = FUNC0(p);
			p += 2;
			len -= 2;
			if (len < l)
				break;
			if ((*cb)(dev, tag, p, l, config, ldn))
				return (p + l);
		}
		p += l;
		len -= l;
	}
	return NULL;
}