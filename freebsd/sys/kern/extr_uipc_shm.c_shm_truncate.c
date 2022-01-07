
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct shmfd {int dummy; } ;
struct file {int f_cred; struct shmfd* f_data; } ;
typedef int off_t ;


 int mac_posixshm_check_truncate (struct ucred*,int ,struct shmfd*) ;
 int shm_dotruncate (struct shmfd*,int ) ;

__attribute__((used)) static int
shm_truncate(struct file *fp, off_t length, struct ucred *active_cred,
    struct thread *td)
{
 struct shmfd *shmfd;




 shmfd = fp->f_data;





 return (shm_dotruncate(shmfd, length));
}
