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
typedef  int u_char ;
struct ess_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ess_info*,int) ; 
 int FUNC1 (struct ess_info*) ; 

__attribute__((used)) static int
FUNC2(struct ess_info *sc, u_char reg)
{
    	return (FUNC0(sc, 0xc0) && FUNC0(sc, reg))? FUNC1(sc) : -1;
}