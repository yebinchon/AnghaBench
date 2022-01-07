
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmfd {char* shm_path; } ;
struct shm_mapping {char* sm_path; int sm_shmfd; int sm_fnv; } ;
typedef int Fnv32_t ;


 int LIST_INSERT_HEAD (int ,struct shm_mapping*,int ) ;
 int M_SHMFD ;
 int M_WAITOK ;
 int SHM_HASH (int ) ;
 struct shm_mapping* malloc (int,int ,int ) ;
 int shm_hold (struct shmfd*) ;
 int sm_link ;

__attribute__((used)) static void
shm_insert(char *path, Fnv32_t fnv, struct shmfd *shmfd)
{
 struct shm_mapping *map;

 map = malloc(sizeof(struct shm_mapping), M_SHMFD, M_WAITOK);
 map->sm_path = path;
 map->sm_fnv = fnv;
 map->sm_shmfd = shm_hold(shmfd);
 shmfd->shm_path = path;
 LIST_INSERT_HEAD(SHM_HASH(fnv), map, sm_link);
}
