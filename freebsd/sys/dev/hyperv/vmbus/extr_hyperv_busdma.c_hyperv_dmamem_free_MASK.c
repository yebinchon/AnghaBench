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
struct hyperv_dma {int /*<<< orphan*/  hv_dtag; int /*<<< orphan*/  hv_dmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

void
FUNC3(struct hyperv_dma *dma, void *ptr)
{
	FUNC1(dma->hv_dtag, dma->hv_dmap);
	FUNC2(dma->hv_dtag, ptr, dma->hv_dmap);
	FUNC0(dma->hv_dtag);
}