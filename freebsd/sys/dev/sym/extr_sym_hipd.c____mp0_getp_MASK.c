#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  nump; } ;
typedef  TYPE_1__ m_pool_s ;
typedef  scalar_t__ m_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static m_addr_t FUNC1(m_pool_s *mp)
{
	m_addr_t m = (m_addr_t) FUNC0();
	if (m)
		++mp->nump;
	return m;
}