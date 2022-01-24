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
struct ad1816_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD1816_ALE ; 
 unsigned int AD1816_ALEMASK ; 
 int /*<<< orphan*/  AD1816_HIGH ; 
 int /*<<< orphan*/  AD1816_LOW ; 
 int FUNC0 (struct ad1816_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ad1816_info*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static void
FUNC2(struct ad1816_info *ad1816, unsigned int reg, unsigned short data)
{
    	if (FUNC0(ad1816, 100) == -1) return;
    	FUNC1(ad1816, AD1816_ALE, (reg & AD1816_ALEMASK));
    	FUNC1(ad1816, AD1816_LOW,  (data & 0x000000ff));
    	FUNC1(ad1816, AD1816_HIGH, (data & 0x0000ff00) >> 8);
}