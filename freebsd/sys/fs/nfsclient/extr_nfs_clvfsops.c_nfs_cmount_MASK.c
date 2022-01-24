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
typedef  int /*<<< orphan*/  uint64_t ;
struct nfs_args {int dummy; } ;
struct mntarg {int dummy; } ;

/* Variables and functions */
 int FUNC0 (void*,struct nfs_args*,int) ; 
 int FUNC1 (struct mntarg*,int /*<<< orphan*/ ) ; 
 struct mntarg* FUNC2 (struct mntarg*,char*,struct nfs_args*,int) ; 

__attribute__((used)) static int
FUNC3(struct mntarg *ma, void *data, uint64_t flags)
{
	int error;
	struct nfs_args args;

	error = FUNC0(data, &args, sizeof (struct nfs_args));
	if (error)
		return error;

	ma = FUNC2(ma, "nfs_args", &args, sizeof args);

	error = FUNC1(ma, flags);
	return (error);
}