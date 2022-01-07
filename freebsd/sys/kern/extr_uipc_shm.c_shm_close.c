
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct shmfd {int dummy; } ;
struct file {struct shmfd* f_data; } ;


 int shm_drop (struct shmfd*) ;

__attribute__((used)) static int
shm_close(struct file *fp, struct thread *td)
{
 struct shmfd *shmfd;

 shmfd = fp->f_data;
 fp->f_data = ((void*)0);
 shm_drop(shmfd);

 return (0);
}
