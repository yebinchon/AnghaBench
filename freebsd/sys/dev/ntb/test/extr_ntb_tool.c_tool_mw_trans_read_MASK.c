#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tool_mw {long long widx; long long mm_base; long long size; long long xlat_align; long long xlat_align_size; long long phys_size; scalar_t__ dma_base; int /*<<< orphan*/  pidx; TYPE_1__* tc; } ;
struct sysctl_req {int dummy; } ;
struct sbuf {int s_error; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*) ; 
 int FUNC2 (struct sbuf*) ; 
 struct sbuf* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct sysctl_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,char*,long long,...) ; 

__attribute__((used)) static int
FUNC5(struct tool_mw *inmw, struct sysctl_req *req)
{
	ssize_t buf_size = 512;
	struct sbuf *sb;
	int rc = 0;

	sb = FUNC3(NULL, NULL, buf_size, req);
	if (sb == NULL) {
		rc = sb->s_error;
		return (rc);
	}

	FUNC4(sb, "\nInbound MW     \t%d\n", inmw->widx);
	FUNC4(sb, "Port           \t%d (%d)\n",
	    FUNC0(inmw->tc->dev, inmw->pidx), inmw->pidx);
	FUNC4(sb, "Window Address \t%p\n", inmw->mm_base);
	FUNC4(sb, "DMA Address    \t0x%016llx\n", (long long)inmw->dma_base);
	FUNC4(sb, "Window Size    \t0x%016zx[p]\n", inmw->size);
	FUNC4(sb, "Alignment      \t0x%016zx[p]\n", inmw->xlat_align);
	FUNC4(sb, "Size Alignment \t0x%016zx[p]\n",
	    inmw->xlat_align_size);
	FUNC4(sb, "Size Max       \t0x%016zx[p]\n", inmw->phys_size);

	rc = FUNC2(sb);
	FUNC1(sb);

	return (rc);
}