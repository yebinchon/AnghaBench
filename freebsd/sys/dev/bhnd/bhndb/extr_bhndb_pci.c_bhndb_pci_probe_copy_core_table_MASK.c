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
typedef  int u_int ;
struct bhndb_pci_probe {int ncores; int /*<<< orphan*/  cores; } ;
struct bhnd_core_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_BHND ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct bhnd_core_info* FUNC0 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_core_info*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC2(struct bhndb_pci_probe *probe,
    struct bhnd_core_info **cores, u_int *ncores)
{
	size_t len = sizeof(**cores) * probe->ncores;

	*cores = FUNC0(len, M_BHND, M_WAITOK);
	FUNC1(*cores, probe->cores, len);

	*ncores = probe->ncores;

	return (0);
}