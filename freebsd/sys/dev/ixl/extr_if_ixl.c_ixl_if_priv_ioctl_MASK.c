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
typedef  int /*<<< orphan*/  u_long ;
struct ixl_pf {int dummy; } ;
struct ifdrv {scalar_t__ ifd_cmd; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ I40E_NVM_ACCESS ; 
 struct ixl_pf* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ixl_pf*,struct ifdrv*) ; 

__attribute__((used)) static int
FUNC2(if_ctx_t ctx, u_long command, caddr_t data)
{
	struct ixl_pf *pf = FUNC0(ctx);
	struct ifdrv *ifd = (struct ifdrv *)data;
	int error = 0;

	/* NVM update command */
	if (ifd->ifd_cmd == I40E_NVM_ACCESS)
		error = FUNC1(pf, ifd);
	else
		error = EINVAL;

	return (error);
}