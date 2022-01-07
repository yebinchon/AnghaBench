
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xs_dev_data {scalar_t__ read_prod; scalar_t__ read_cons; int * read_buffer; } ;
struct uio {scalar_t__ uio_resid; } ;
struct cdev {int dummy; } ;


 int EWOULDBLOCK ;
 size_t MASK_READ_IDX (scalar_t__) ;
 int PCATCH ;
 int devfs_get_cdevpriv (void**) ;
 int hz ;
 int tsleep (struct xs_dev_data*,int ,char*,int) ;
 int uiomove (int *,int,struct uio*) ;

__attribute__((used)) static int
xs_dev_read(struct cdev *dev, struct uio *uio, int ioflag)
{
 int error;
 struct xs_dev_data *u;

 error = devfs_get_cdevpriv((void **)&u);
 if (error != 0)
  return (error);

 while (u->read_prod == u->read_cons) {
  error = tsleep(u, PCATCH, "xsdread", hz/10);
  if (error && error != EWOULDBLOCK)
   return (error);
 }

 while (uio->uio_resid > 0) {
  if (u->read_cons == u->read_prod)
   break;
  error = uiomove(&u->read_buffer[MASK_READ_IDX(u->read_cons)],
      1, uio);
  if (error)
   return (error);
  u->read_cons++;
 }
 return (0);
}
