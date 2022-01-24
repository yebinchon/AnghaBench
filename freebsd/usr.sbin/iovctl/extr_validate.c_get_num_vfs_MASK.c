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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  IOV_CONFIG_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t
FUNC2(const nvlist_t *pf)
{
	const nvlist_t *iov;

	iov = FUNC1(pf, IOV_CONFIG_NAME);
	return (FUNC0(iov, "num_vfs"));
}