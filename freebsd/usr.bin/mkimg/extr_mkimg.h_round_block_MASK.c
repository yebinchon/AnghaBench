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
typedef  int lba_t ;

/* Variables and functions */
 int blksz ; 
 int secsz ; 

__attribute__((used)) static inline lba_t
FUNC0(lba_t n)
{
	lba_t b = blksz / secsz;
	return ((n + b - 1) & ~(b - 1));
}