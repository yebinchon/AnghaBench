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
struct ulptx_sgl {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static inline int
FUNC1(int nsegs)
{
	u_int n;

	nsegs--; /* first segment is part of ulptx_sgl */
	n = sizeof(struct ulptx_sgl) + 8 * ((3 * nsegs) / 2 + (nsegs & 1));
	return (FUNC0(n, 16));
}