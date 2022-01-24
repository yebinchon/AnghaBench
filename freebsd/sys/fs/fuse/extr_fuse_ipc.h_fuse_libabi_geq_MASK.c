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
typedef  scalar_t__ uint32_t ;
struct fuse_data {scalar_t__ fuse_libabi_major; scalar_t__ fuse_libabi_minor; } ;

/* Variables and functions */

__attribute__((used)) static inline bool
FUNC0(struct fuse_data *data, uint32_t abi_maj, uint32_t abi_min)
{
	return (data->fuse_libabi_major > abi_maj ||
	    (data->fuse_libabi_major == abi_maj &&
	     data->fuse_libabi_minor >= abi_min));
}