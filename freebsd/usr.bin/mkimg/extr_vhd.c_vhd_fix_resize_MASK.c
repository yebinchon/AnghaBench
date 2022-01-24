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
typedef  int uint64_t ;
typedef  int lba_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int secsz ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(lba_t imgsz)
{
	uint64_t imagesz;

	imagesz = FUNC1(imgsz * secsz);
	/*
	 * Azure demands that images are a whole number of megabytes.
	 */
	imagesz = (imagesz + 0xfffffULL) & ~0xfffffULL;
	return (FUNC0(imagesz / secsz));
}