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
struct bufdomain {int dummy; } ;
struct buf {size_t b_domain; } ;

/* Variables and functions */
 struct bufdomain* bdomain ; 

__attribute__((used)) static inline struct bufdomain *
FUNC0(struct buf *bp)
{

	return (&bdomain[bp->b_domain]);
}