
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int32_t ;
struct thread {int dummy; } ;
struct file {int dummy; } ;
struct fcrypt {int sesn; int csessions; } ;
struct crypt_find_op {int dummy; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;





 int DTYPE_CRYPTO ;
 int EINVAL ;
 int FREAD ;
 int FWRITE ;
 int M_WAITOK ;
 int M_XDATA ;
 int TAILQ_INIT (int *) ;
 int crypto_getfeat (int*) ;
 int cryptodev_find (struct crypt_find_op*) ;
 int cryptofops ;
 int falloc (struct thread*,struct file**,int*,int ) ;
 int fdrop (struct file*,struct thread*) ;
 int finit (struct file*,int,int ,struct fcrypt*,int *) ;
 int free (struct fcrypt*,int ) ;
 struct fcrypt* malloc (int,int ,int ) ;

__attribute__((used)) static int
cryptoioctl(struct cdev *dev, u_long cmd, caddr_t data, int flag, struct thread *td)
{
 struct file *f;
 struct fcrypt *fcr;
 int fd, error;

 switch (cmd) {
 case 128:
  fcr = malloc(sizeof(struct fcrypt), M_XDATA, M_WAITOK);
  TAILQ_INIT(&fcr->csessions);
  fcr->sesn = 0;

  error = falloc(td, &f, &fd, 0);

  if (error) {
   free(fcr, M_XDATA);
   return (error);
  }

  finit(f, FREAD | FWRITE, DTYPE_CRYPTO, fcr, &cryptofops);
  *(u_int32_t *)data = fd;
  fdrop(f, td);
  break;
 case 129:
  error = cryptodev_find((struct crypt_find_op *)data);
  break;
 case 130:
  error = crypto_getfeat((int *)data);
  break;
 default:
  error = EINVAL;
  break;
 }
 return (error);
}
