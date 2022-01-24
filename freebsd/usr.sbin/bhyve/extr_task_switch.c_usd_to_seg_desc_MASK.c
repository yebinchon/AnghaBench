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
typedef  int u_int ;
struct user_segment_descriptor {int sd_gran; int sd_type; int sd_dpl; int sd_p; int sd_xx; int sd_def32; } ;
struct seg_desc {int base; int limit; int access; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct user_segment_descriptor*) ; 
 int FUNC1 (struct user_segment_descriptor*) ; 

__attribute__((used)) static struct seg_desc
FUNC2(struct user_segment_descriptor *usd)
{
	struct seg_desc seg_desc;

	seg_desc.base = (u_int)FUNC0(usd);
	if (usd->sd_gran)
		seg_desc.limit = (u_int)(FUNC1(usd) << 12) | 0xfff;
	else
		seg_desc.limit = (u_int)FUNC1(usd);
	seg_desc.access = usd->sd_type | usd->sd_dpl << 5 | usd->sd_p << 7;
	seg_desc.access |= usd->sd_xx << 12;
	seg_desc.access |= usd->sd_def32 << 14;
	seg_desc.access |= usd->sd_gran << 15;

	return (seg_desc);
}