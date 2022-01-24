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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *cqe)
{
	__be32 *buf = cqe;

	FUNC1("CQE contents %08x %08x %08x %08x %08x %08x %08x %08x\n",
	       FUNC0(buf[0]), FUNC0(buf[1]), FUNC0(buf[2]),
	       FUNC0(buf[3]), FUNC0(buf[4]), FUNC0(buf[5]),
	       FUNC0(buf[6]), FUNC0(buf[7]));
}