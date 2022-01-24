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
struct mwl_softc {int dummy; } ;
struct mwl_descdma {int /*<<< orphan*/  dd_dmat; int /*<<< orphan*/  dd_dmamap; int /*<<< orphan*/  dd_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mwl_descdma*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct mwl_softc *sc, struct mwl_descdma *dd)
{
	FUNC1(dd->dd_dmat, dd->dd_dmamap);
	FUNC2(dd->dd_dmat, dd->dd_desc, dd->dd_dmamap);
	FUNC0(dd->dd_dmat);

	FUNC3(dd, 0, sizeof(*dd));
}