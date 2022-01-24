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
struct signature_check {int dummy; } ;
struct commit {int dummy; } ;
typedef  int /*<<< orphan*/  signature_check ;

/* Variables and functions */
 int FUNC0 (struct commit*,struct signature_check*) ; 
 int /*<<< orphan*/  FUNC1 (struct signature_check*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct signature_check*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct signature_check*) ; 

__attribute__((used)) static int FUNC4(struct commit *commit, unsigned flags)
{
	struct signature_check signature_check;
	int ret;

	FUNC1(&signature_check, 0, sizeof(signature_check));

	ret = FUNC0(commit, &signature_check);
	FUNC2(&signature_check, flags);

	FUNC3(&signature_check);
	return ret;
}