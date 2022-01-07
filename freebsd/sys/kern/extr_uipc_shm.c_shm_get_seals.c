
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmfd {int shm_seals; } ;
struct file {struct shmfd* f_data; } ;



__attribute__((used)) static int
shm_get_seals(struct file *fp, int *seals)
{
 struct shmfd *shmfd;

 shmfd = fp->f_data;
 *seals = shmfd->shm_seals;
 return (0);
}
