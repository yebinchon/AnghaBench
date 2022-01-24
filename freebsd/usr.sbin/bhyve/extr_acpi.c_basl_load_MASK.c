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
typedef  scalar_t__ uint64_t ;
struct vmctx {int dummy; } ;
struct stat {int /*<<< orphan*/  st_size; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ basl_acpi_base ; 
 int errno ; 
 scalar_t__ FUNC0 (int,struct stat*) ; 
 void* FUNC1 (struct vmctx*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct vmctx *ctx, int fd, uint64_t off)
{
	struct stat sb;
	void *gaddr;

	if (FUNC0(fd, &sb) < 0)
		return (errno);
		
	gaddr = FUNC1(ctx, basl_acpi_base + off, sb.st_size);
	if (gaddr == NULL)
		return (EFAULT);

	if (FUNC2(fd, gaddr, sb.st_size) < 0)
		return (errno);

	return (0);
}