
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tdu_off; } ;
struct thread {TYPE_1__ td_uretoff; } ;
struct shmfd {scalar_t__ shm_size; } ;
struct file {struct shmfd* f_data; } ;
typedef scalar_t__ off_t ;


 int EINVAL ;
 int EOVERFLOW ;
 int FOF_NOUPDATE ;



 scalar_t__ OFF_MAX ;
 scalar_t__ foffset_lock (struct file*,int ) ;
 int foffset_unlock (struct file*,scalar_t__,int ) ;

__attribute__((used)) static int
shm_seek(struct file *fp, off_t offset, int whence, struct thread *td)
{
 struct shmfd *shmfd;
 off_t foffset;
 int error;

 shmfd = fp->f_data;
 foffset = foffset_lock(fp, 0);
 error = 0;
 switch (whence) {
 case 130:
  if (foffset < 0 ||
      (offset > 0 && foffset > OFF_MAX - offset)) {
   error = EOVERFLOW;
   break;
  }
  offset += foffset;
  break;
 case 128:
  if (offset > 0 && shmfd->shm_size > OFF_MAX - offset) {
   error = EOVERFLOW;
   break;
  }
  offset += shmfd->shm_size;
  break;
 case 129:
  break;
 default:
  error = EINVAL;
 }
 if (error == 0) {
  if (offset < 0 || offset > shmfd->shm_size)
   error = EINVAL;
  else
   td->td_uretoff.tdu_off = offset;
 }
 foffset_unlock(fp, offset, error != 0 ? FOF_NOUPDATE : 0);
 return (error);
}
