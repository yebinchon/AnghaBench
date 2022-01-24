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
typedef  size_t uint32_t ;
struct vxlan_softc {int /*<<< orphan*/  vxl_ftable_cnt; int /*<<< orphan*/ * vxl_ftable; } ;
struct vxlan_ftable_entry {int /*<<< orphan*/  vxlfe_mac; } ;

/* Variables and functions */
 int EEXIST ; 
 struct vxlan_ftable_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vxlan_ftable_entry*,struct vxlan_ftable_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vxlan_ftable_entry*,struct vxlan_ftable_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct vxlan_ftable_entry*,int /*<<< orphan*/ ) ; 
 struct vxlan_ftable_entry* FUNC4 (struct vxlan_ftable_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vxlan_softc*) ; 
 size_t FUNC6 (struct vxlan_softc*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vxlfe_hash ; 

__attribute__((used)) static int
FUNC8(struct vxlan_softc *sc,
    struct vxlan_ftable_entry *fe)
{
	struct vxlan_ftable_entry *lfe;
	uint32_t hash;
	int dir;

	FUNC5(sc);
	hash = FUNC6(sc, fe->vxlfe_mac);

	lfe = FUNC0(&sc->vxl_ftable[hash]);
	if (lfe == NULL) {
		FUNC3(&sc->vxl_ftable[hash], fe, vxlfe_hash);
		goto out;
	}

	do {
		dir = FUNC7(fe->vxlfe_mac, lfe->vxlfe_mac);
		if (dir == 0)
			return (EEXIST);
		if (dir > 0) {
			FUNC2(lfe, fe, vxlfe_hash);
			goto out;
		} else if (FUNC4(lfe, vxlfe_hash) == NULL) {
			FUNC1(lfe, fe, vxlfe_hash);
			goto out;
		} else
			lfe = FUNC4(lfe, vxlfe_hash);
	} while (lfe != NULL);

out:
	sc->vxl_ftable_cnt++;

	return (0);
}