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
struct md_req {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct md_req*) ; 
 int /*<<< orphan*/  md_sx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct md_req *mdr)
{
	int error;

	FUNC1(&md_sx);
	error = FUNC0(mdr);
	FUNC2(&md_sx);
	return (error);
}