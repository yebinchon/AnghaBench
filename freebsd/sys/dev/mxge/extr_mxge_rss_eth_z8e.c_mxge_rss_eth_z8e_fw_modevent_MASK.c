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
struct firmware {int dummy; } ;
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 struct firmware* FUNC0 (char*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  rss_eth_z8e ; 
 int /*<<< orphan*/  rss_eth_z8e_length ; 
 int /*<<< orphan*/  rss_eth_z8e_uncompressed_length ; 

__attribute__((used)) static int
FUNC2(module_t mod, int type, void *unused)
{
	const struct firmware *fp, *parent;
	int error;
	switch (type) {
	case MOD_LOAD:

		fp = FUNC0("mxge_rss_eth_z8e", rss_eth_z8e, 
				       (size_t)rss_eth_z8e_length,
				       rss_eth_z8e_uncompressed_length, NULL);
		if (fp == NULL)
			goto fail_0;
		parent = fp;
		return (0);
	fail_0:
		return (ENXIO);
	case MOD_UNLOAD:
		error = FUNC1("mxge_rss_eth_z8e");
		return (error);
	}
	return (EINVAL);
}