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
struct mbchain {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  MB_MUSER ; 
 int FUNC0 (struct mbchain*) ; 
 int FUNC1 (struct mbchain*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct mbchain *mbp, int len, caddr_t data)
{
	int error;

	if (len == 0)
		return 0;
	error = FUNC0(mbp);
	if (error)
		return error;
	return FUNC1(mbp, data, len, MB_MUSER);
}