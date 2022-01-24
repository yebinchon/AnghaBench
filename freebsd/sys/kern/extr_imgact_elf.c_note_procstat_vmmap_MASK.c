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
typedef  int /*<<< orphan*/  structsize ;
struct sbuf {int dummy; } ;
struct proc {int dummy; } ;
struct kinfo_vmentry {int dummy; } ;

/* Variables and functions */
 int KERN_VMMAP_PACK_KINFO ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 scalar_t__ coredump_pack_vmmapinfo ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,struct sbuf*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,int*,int) ; 
 int /*<<< orphan*/  sbuf_count_drain ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*) ; 
 struct sbuf* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static void
FUNC7(void *arg, struct sbuf *sb, size_t *sizep)
{
	struct proc *p;
	size_t size;
	int structsize, vmmap_flags;

	if (coredump_pack_vmmapinfo)
		vmmap_flags = KERN_VMMAP_PACK_KINFO;
	else
		vmmap_flags = 0;

	p = (struct proc *)arg;
	structsize = sizeof(struct kinfo_vmentry);
	if (sb == NULL) {
		size = 0;
		sb = FUNC5(NULL, NULL, 128, SBUF_FIXEDLEN);
		FUNC6(sb, sbuf_count_drain, &size);
		FUNC2(sb, &structsize, sizeof(structsize));
		FUNC0(p);
		FUNC1(p, sb, -1, vmmap_flags);
		FUNC4(sb);
		FUNC3(sb);
		*sizep = size;
	} else {
		FUNC2(sb, &structsize, sizeof(structsize));
		FUNC0(p);
		FUNC1(p, sb, *sizep - sizeof(structsize),
		    vmmap_flags);
	}
}