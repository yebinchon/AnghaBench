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
typedef  int u_int32_t ;
struct mem_range_desc {int mr_base; int mr_len; int mr_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int FUNC0 (int,int,int,int) ; 
 int MDF_FORCE ; 
 int MDF_UNCACHEABLE ; 
 int MDF_WRITECOMBINE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static __inline int
FUNC3(struct mem_range_desc *desc, u_int32_t *mtrr)
{
	u_int32_t len = 0, wc, uc;
	int bit;

	if (desc->mr_base &~ 0xfffe0000)
		return (EINVAL);
	if (desc->mr_len < 131072 || !FUNC2(desc->mr_len))
		return (EINVAL);
	if (desc->mr_flags &~ (MDF_WRITECOMBINE|MDF_UNCACHEABLE|MDF_FORCE))
		return (EOPNOTSUPP);

	for (bit = FUNC1(desc->mr_len >> 17) - 1; bit < 15; bit++)
		len |= 1 << bit; 
	wc = (desc->mr_flags & MDF_WRITECOMBINE) ? 1 : 0;
	uc = (desc->mr_flags & MDF_UNCACHEABLE) ? 1 : 0;

	*mtrr = FUNC0(desc->mr_base, len, wc, uc);
	return (0);
}