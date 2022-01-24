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
typedef  int /*<<< orphan*/  uint8_t ;
struct xbb_softc {int /*<<< orphan*/  kva_free; int /*<<< orphan*/ * kva; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 intptr_t PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,intptr_t,intptr_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct xbb_softc *xbb, uint8_t *kva_ptr, int nr_pages)
{
	intptr_t start_page;

	FUNC1(&xbb->lock, MA_OWNED);

	start_page = (intptr_t)(kva_ptr - xbb->kva) >> PAGE_SHIFT;
	FUNC0(xbb->kva_free, start_page, start_page + nr_pages - 1);

}