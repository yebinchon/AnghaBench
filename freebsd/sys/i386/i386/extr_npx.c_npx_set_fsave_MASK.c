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
union savefpu {int /*<<< orphan*/  sv_xmm; } ;
typedef  int /*<<< orphan*/  sv ;
struct fpacc87 {int dummy; } ;
struct env87 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,union savefpu*,int) ; 
 int /*<<< orphan*/  FUNC1 (union savefpu*,int) ; 
 scalar_t__ cpu_fxsr ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,union savefpu*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC4(void *addr)
{
	union savefpu sv;
	int error;

	FUNC1(&sv, sizeof(sv));
	if (cpu_fxsr)
		FUNC2(addr, &sv.sv_xmm);
	else
		FUNC0(addr, &sv, sizeof(struct env87) +
		    sizeof(struct fpacc87[8]));
	error = FUNC3(curthread, &sv, NULL, 0);
	return (error);
}