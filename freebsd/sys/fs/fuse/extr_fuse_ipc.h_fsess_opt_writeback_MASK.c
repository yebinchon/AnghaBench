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
struct mount {int dummy; } ;
struct fuse_data {scalar_t__ cache_mode; } ;

/* Variables and functions */
 scalar_t__ FUSE_CACHE_WB ; 
 struct fuse_data* FUNC0 (struct mount*) ; 

__attribute__((used)) static inline bool
FUNC1(struct mount *mp)
{
	struct fuse_data *data = FUNC0(mp);

	return (data->cache_mode == FUSE_CACHE_WB);
}