#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ nz_strx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char const* rtstr_base ; 
 TYPE_1__* rtsym_base ; 
 unsigned long rtsym_count ; 

__attribute__((used)) static const char *
FUNC1(unsigned long n)
{
    FUNC0(n < rtsym_count);
    if (rtsym_base[n].nz_strx == 0)
	return "";
    return rtstr_base + rtsym_base[n].nz_strx;
}