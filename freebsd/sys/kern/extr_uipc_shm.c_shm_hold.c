
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmfd {int shm_refs; } ;


 int refcount_acquire (int *) ;

struct shmfd *
shm_hold(struct shmfd *shmfd)
{

 refcount_acquire(&shmfd->shm_refs);
 return (shmfd);
}
