#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* fc; } ;
struct dcons_crom_softc {int /*<<< orphan*/  unit; int /*<<< orphan*/  ver; int /*<<< orphan*/  spec; TYPE_2__ fd; } ;
struct crom_src {int dummy; } ;
struct crom_chunk {int dummy; } ;
struct TYPE_3__ {struct crom_chunk* crom_root; struct crom_src* crom_src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CROM_UDIR ; 
 int /*<<< orphan*/  CSRKEY_SPEC ; 
 int /*<<< orphan*/  CSRKEY_VER ; 
 int /*<<< orphan*/  CSRVAL_VENDOR_PRIVATE ; 
 int /*<<< orphan*/  DCONS_CSR_KEY_HI ; 
 int /*<<< orphan*/  DCONS_CSR_KEY_LO ; 
 int /*<<< orphan*/  DCONS_CSR_VAL_VER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct crom_src*,struct crom_chunk*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct crom_src*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct dcons_crom_softc*) ; 
 int /*<<< orphan*/  dcons_paddr ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct dcons_crom_softc *sc;
	struct crom_src *src;
	struct crom_chunk *root;

	sc = (struct dcons_crom_softc *) arg;
	src = sc->fd.fc->crom_src;
	root = sc->fd.fc->crom_root;

	FUNC2(&sc->unit, sizeof(struct crom_chunk));

	FUNC3(src, root, &sc->unit, CROM_UDIR);
	FUNC4(&sc->unit, CSRKEY_SPEC, CSRVAL_VENDOR_PRIVATE);
	FUNC5(src, &sc->unit, &sc->spec, "FreeBSD");
	FUNC4(&sc->unit, CSRKEY_VER, DCONS_CSR_VAL_VER);
	FUNC5(src, &sc->unit, &sc->ver, "dcons");
	FUNC4(&sc->unit, DCONS_CSR_KEY_HI, FUNC0(dcons_paddr));
	FUNC4(&sc->unit, DCONS_CSR_KEY_LO, FUNC1(dcons_paddr));
#if (defined(__i386__) || defined(__amd64__))
	FUNC6(sc);
#endif
}