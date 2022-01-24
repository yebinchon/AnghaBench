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
struct shmfd {char* shm_path; } ;
struct shm_mapping {char* sm_path; int /*<<< orphan*/  sm_shmfd; int /*<<< orphan*/  sm_fnv; } ;
typedef  int /*<<< orphan*/  Fnv32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct shm_mapping*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SHMFD ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct shm_mapping* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct shmfd*) ; 
 int /*<<< orphan*/  sm_link ; 

__attribute__((used)) static void
FUNC4(char *path, Fnv32_t fnv, struct shmfd *shmfd)
{
	struct shm_mapping *map;

	map = FUNC2(sizeof(struct shm_mapping), M_SHMFD, M_WAITOK);
	map->sm_path = path;
	map->sm_fnv = fnv;
	map->sm_shmfd = FUNC3(shmfd);
	shmfd->shm_path = path;
	FUNC0(FUNC1(fnv), map, sm_link);
}